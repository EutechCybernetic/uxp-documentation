# Interface guidelines

Most screens are one of a few shapes. Picking the component that matches the shape is most of the work: it
gives you the platform's behavior (paging, search, filters, saved views, export, responsive columns) for
free, and it makes your screen look and behave like every other screen in the product.

## Which component

| Your screen is | Use | Why |
|---|---|---|
| An app's main list of one object type: work orders, assets, users | [`ObjectSearchComponent`](../components/ObjectSearchComponent.md) | The full list page: search, filters, saved views, sorting, column customization, selection, row actions, a details panel and export |
| A table of rows with columns, inside a widget or a section of a page | [`DataTable`](../components/DataTable.md) | Columns with custom renderers, paging in as the user scrolls |
| A list of items that are not a table: cards, rows with a custom layout | [`DataList`](../components/DataList.md) | You render each item; the component handles paging and scrolling |
| A grid of cards of mixed content | [`DataGrid`](../components/DataGrid.md) with [`ItemCard`](../components/ItemCard.md) | A fixed number of items laid out in columns |
| A settings screen | [`ConfigurationView`](../components/ConfigurationView.md) | Sidebar of sections, searchable, with a header and actions per section |

Every one of these has a live demo on its reference page.

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

## Tables inside a page or widget

`DataTable` is the smaller table. You define the columns and how each cell renders; it pages in more rows as
the user scrolls.

```tsx
<DataTable
    data={(max, last) => getDataItems(max, last)}
    pageSize={10}
    columns={[
        { title: 'Request', width: '30%', renderColumn: (item) => <ItemCard item={item} subTitleField="request" /> },
        { title: 'Status', renderColumn: (item) => <div>{item.status}</div> }
    ]}
/>
```

## Lists that are not tables

`DataList` handles the same paging, but you render each item however you like. That suits an activity feed,
a list of cards, or anything with a layout a table cannot express.

With a fixed array:

```tsx
<DataList
    data={items}
    renderItem={(item, key) => <div key={key}>{item.name}</div>}
    pageSize={10}
/>
```

Paging from the backend, with a function that returns `{ items, pageToken }`:

```tsx
async function getData(max: number, last: string, args: any) {
    const { data } = await context.executeActionSafe('WorkOrder', 'List', { max, last, ...args });
    return { items: data?.items ?? [], pageToken: data?.lastPageToken ?? last };
}

<DataList
    data={(max, last, args) => getData(max, last, args)}
    renderItem={(item, key) => <div key={key}>{item.name}</div>}
    pageSize={10}
/>
```

`uxpContext.fromLucyDataCollection(model, collection)` returns a function of exactly this shape, so a Lucy
collection can be handed straight to `data`.

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

Use `DataList` instead when the set can grow: `DataGrid` lays out what you give it, `DataList` pages.

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
