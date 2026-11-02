# Interface guidelines

Most screens are one of a few shapes. Picking the component that matches the shape is most of the work: it
gives you the platform's behavior (paging, search, filters, saved views, export, responsive columns) for
free, and it makes your screen look and behave like every other screen in the product.

## Which component

| Your screen is | Use | Why |
|---|---|---|
| An app's main list of one object type: work orders, assets, users | [`ObjectSearchComponent`](../components/ObjectSearchComponent.md) | The full list page: search, filters, saved views, sorting, column customization, selection, row actions, a details panel, cards and export |
| A list inside a widget or a section of a page: a feed, rows with a custom layout, a scrolling table | [`ObjectSearchComponent`](../components/ObjectSearchComponent.md) with only the parts it needs | The same list with the toolbar turned off; one column draws a whole row |
| A short configuration list the user edits in place | [`SimpleConfigurationTable`](../components/SimpleConfigurationTable.md) | Add, edit, delete and reorder rows inline |
| A grid of cards of mixed content | [`DataGrid`](../components/DataGrid.md) with [`ItemCard`](../components/ItemCard.md) | A fixed number of items laid out in columns |
| A settings screen | [`ConfigurationView`](../components/ConfigurationView.md) | Sidebar of sections, searchable, with a header and actions per section |

Every one of these has a live demo on its reference page. `DataList`, `DataTable`, `TableComponent` and
`CRUDComponent` are deprecated: they keep working, but new screens use the components above. See
[Deprecated components](../v5/deprecated-components.md).

## App list pages

`ObjectSearchComponent` is the list page. Give it a data function, columns, a page size and a total, and
turn on the features the screen needs.

```tsx
<ObjectSearchComponent
    title="Work Orders"
    idField="key"
    data={async (page, pageSize, query, filters, sort) => ({ items: await loadPage(page, pageSize, query, filters, sort) })}
    total={async (query, filters) => countRows(query, filters)}
    columns={[
        { id: 'id', label: 'ID', isSortable: true },
        { id: 'status', label: 'Status' }
    ]}
    pageSize={20}
    search={{ enable: true, fields: ['id'] }}
    filters={{ formFields: [{ name: 'status', label: 'Status', type: 'select', options: statusOptions }] }}
    detailsPanel={{ renderDetails: (id, onClose) => <WorkOrderDetails id={id} onClose={onClose} /> }}
    appendToURL={true}
/>
```

`data` and `total` both accept a function, so the list pages against the backend rather than loading
everything. `appendToURL` keeps the current search, filters and selection in the query string, so the page
survives a refresh and the user can share the link. Column ids match the fields in the row objects.

Prefer the details panel over navigating away when the details are short; use a route when the details
screen is a page in its own right.

## Lists inside a page or widget

Use the same `ObjectSearchComponent` and leave out what the list does not need.

- `paging="infinite"` loads the next page as the user scrolls, instead of previous / next buttons.
- `hidePaging` hides the page control and the count.
- Leave out `title`, `search`, `filters` and `actionButtons`, and set `allowRefresh={false}`. The toolbar
  rows are then not drawn at all.
- One column with no `label` hides the column header. Its `renderColumn` draws the whole row, so the table
  gives the padding and the row lines, and you only draw the content.
- Add more columns when the content is a table. The header comes back when a column has a label.

A feed, one row per item:

```tsx
<ObjectSearchComponent
    idField="id"
    data={async (page, pageSize) => ({ items: await loadActivity(page, pageSize) })}
    total={async () => countActivity()}
    columns={[{
        id: 'item',
        label: '',
        renderColumn: (item) => <div className="myapp_activity__row">
            <strong>{item.title}</strong>
            <span>{item.when}</span>
        </div>
    }]}
    pageSize={20}
    paging="infinite"
    hidePaging
    allowRefresh={false}
    noItemsMessage={uxpContext.$L('myapp.activity.empty')}
/>
```

A fixed array works too: give `data` the array and `total` its length.

A Lucy collection: `uxpContext.fromLucyDataCollection(model, collection)` returns a function that takes
`(max, last, args)`, where `last` is how many rows to skip. Wrap it in a page function:

```tsx
const fromCollection = uxpContext.fromLucyDataCollection('WorkOrders', 'Requests');

<ObjectSearchComponent
    idField="_id"
    data={async (page, pageSize) => ({ items: (await fromCollection(pageSize, String((page - 1) * pageSize))).items })}
    total={0}
    columns={[{ id: 'item', label: '', renderColumn: (item) => <RequestRow item={item} /> }]}
    pageSize={20}
    paging="infinite"
    hidePaging
/>
```

With `total={0}`, the list asks for more until a page comes back short.

## Small editable tables

`SimpleConfigurationTable` is for a short list the user edits in place: a list of options, accounts or
mappings. It has search, filters, paging (`paging="infinite"` too) and sortable columns (`isSortable`).
Give it the save callbacks and it edits rows inline; give it none and it is a read-only table.

```tsx
<SimpleConfigurationTable
    columns={[{ id: 'name', label: 'Name', isSortable: true }, { id: 'value', label: 'Value' }]}
    data={settings}
    onAddItem={async (item) => save(item)}
    onUpdateItem={async (item) => save(item)}
    onDeleteItem={async (item) => remove(item)}
/>
```

## Grids of cards

When the set is small and fixed — a launcher, a summary of mixed content, a set of shortcuts — `DataGrid`
lays the items out in columns instead of rows, and `ItemCard` renders each one. Tell `ItemCard` which
fields to read for the image, title, subtitle and name; any of them may be absent and the card adapts.

```tsx
const items = [
    { icon: 'qr-code', title: 'Badge', subTitle: 'Scan your code' },
    { name: 'Jane Doe', title: 'Assigned to', subTitle: 'No image, so the name is used' },
    { title: 'Title only' }
];

<DataGrid
    data={items}
    renderItem={(item, key) => (
        <ItemCard
            key={key}
            item={item}
            imageField="icon"
            titleField="title"
            subTitleField="subTitle"
            nameField="name"
        />
    )}
    columns={2}
/>
```

Use `ObjectSearchComponent` in card mode (`display="cards"`) instead when the set can grow: `DataGrid` lays
out what you give it, the list pages.

## Settings screens

`ConfigurationView` gives a settings page its sidebar and its header. Each section has an id, a title, the
content to render, and optional keywords so the sidebar's search finds it.

```tsx
<ConfigurationView
    uxpContext={props.uxpContext}
    title="Maintenance settings"
    sections={[
        { id: 'general', title: 'General', content: <GeneralSettings /> },
        { id: 'notifications', title: 'Notifications', keywords: ['email', 'alerts'], content: <NotificationSettings /> }
    ]}
/>
```

Use `mode="single"` when the page has one section and does not need a sidebar. Section actions belong on the
section, not scattered through its content.

## General rules

- Every user-visible string goes through `uxpContext.$L`, including column labels and empty-state messages.
- Say what an empty list means. `noItemsMessage` is not optional in a real screen.
- Put open/closed state for forms and panels in the URL, not in `useState`. See
  [Building UI views](./ui-views.md).
- Hide an action the user cannot perform, with `hasAppRole` or `hasModelRole`. Also enforce it on the
  server: hiding a button is not access control.
- Before writing a component of your own, look for it in the [component reference](../components.md). Most
  of what a screen needs already exists.
