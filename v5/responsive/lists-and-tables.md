# Lists and tables on phones

This page covers `ObjectSearchComponent` and `SimpleConfigurationTable`. The deprecated `TableComponent` behaves like `SimpleConfigurationTable`, which is built on it.

## What happens by itself

- **Each row becomes a card.** The first visible column is the card's title. The next two become label and value lines. A card shows three columns at most.
- **Tapping a row with no action of its own shows all its fields** in a sheet. The row's actions sit in the sheet's toolbar: one as an icon, more behind **⋯**. Rows that open a details panel, a form or your `onClickRow` keep doing that.
- **The table header is hidden.** Edit, delete, select and action columns are hidden too.
- **Tools move to a bottom toolbar.** Search, filters, paging and the **⋯** button sit at the bottom of the screen.
- **Filters open as a sheet** with **Clear** and **Apply** buttons.
- **Swipe a row to the left** to open its actions: edit, your row actions and delete. In `ObjectSearchComponent` the sheet's title is the row's name.
- **A row with two or more actions shows ⋯** at the card's top right. Tapping it opens the same sheet. A row with one action shows that action's icon instead.
- **Long-press a row** to start selecting rows when the list has a select column. A bar shows the count, **Select all** and the bulk actions.
- **The details panel opens full screen.** The app header shows its title. The footer **Close** bar goes back to the list.
- **Table buttons:**
  - One `actionButtons` button shows as an icon in the toolbar, when it has a `leftIcon`.
  - Two or more go in a **⋯** sheet.
  - `ObjectSearchComponent` always puts its `actionButtons` in the **⋯** sheet.
  - A close button (`IconButton type="close"`) among them is left out while the footer **Close** bar shows.
- **Editable tables:** tapping a row opens a row form. Inline editing is off on phones.
- **Saved views:** the views list is in the toolbar. Swipe a view to the left to favourite, rename or delete it. Creating a view and saving changes to a view stay on the web.

You don't need to change anything for this.

## What you do

### 1. Put the most useful columns first

The first visible column is the card title. Put the name or ID there. Don't start with a date or a status. The next two columns are the card's two lines: pick the ones people need to tell rows apart.

Hide columns that don't help on a small card with `detailsPanel.columnsToHide`.

### Row actions, never buttons in cells

Give a row its actions (edit, copy, delete…) as row actions, not as buttons drawn in its cells. On the web they show in the row's **⋯** menu. On phones the card shows **⋯** (or the action's icon when there is one) and a swipe opens them.

- `ObjectSearchComponent`: `defaultActionColumns.actionsColumn.rowActions`
- `SimpleConfigurationTable`: `actionsColumn={{ enable: true, rowActions }}`

```tsx
actionsColumn={{ enable: true, rowActions: [
    { label: 'Edit', icon: 'fal pencil', onClick: (row) => edit(row) },
    { label: 'Copy', icon: 'fal copy', onClick: (row) => copy(row) },
    { label: 'Delete', icon: 'fal trash', onClick: (row) => remove(row), visible: (row) => !row.isSystem },
] }}
```

### 2. Give the list its card

The automatic card shows three columns. For the standard look, give the list one column that renders a collapsed `InfoCard`. Models, connectors, queries, widgets, dashboards, users and user groups all use it.

- **List with a details panel:** put the column in `detailsPanel.columns`. It also shows on the web while the panel is open.
- **List without a details panel:** put it in `cardColumn`. Phones only. The web table does not change.

```tsx
import { InfoCard, Chip } from 'uxp/components';

<ObjectSearchComponent
    …
    cardColumn={{
        id: 'card',
        label: 'Query',
        renderColumn: (item) => (
            <InfoCard
                data={item}
                fields={{ name: 'Name', title: 'Name', subtitle: 'ID', image: 'Icon' }}
                shape="circle"
                size="medium"
                layout="collapsed"
                badges={<Chip size="small" label={item.Type} />}
            />
        ),
    }}
/>
```

`InfoCard` props used here:

- `data`: the row.
- `fields`: which row fields are the `title`, `subtitle`, `image` (picture or icon) and `name` (for initials when there is no picture).
- `layout="collapsed"`: the compact one-line card for lists.
- `badges`: chips on the right, such as a type or status.
- `extraFields`: more label / value lines under the title.

A tap on the card keeps the list's own behaviour: your `onClickRow`, else the details panel, else a sheet with all the row's fields.

### 3. Add button on a table

- `SimpleConfigurationTable` shows its **+** button by itself.
- On the deprecated `TableComponent`, give `onAddNew` to show the **+** button. With inline editing, `editable.onAddItem` plus `addNewRow` also shows it. Then the **+** opens a row form.

## Don'ts

- Don't build your own table or card list. It won't get any of the above.
- Don't hide actions behind hover. Phones have no hover.

## Check it

1. Open Chrome device mode at 390 × 844.
2. The list shows cards with a clear title.
3. The search, filter and **⋯** buttons sit at the bottom.
4. Swipe a row left. Its actions open in a sheet.
5. Open a row. The details fill the screen. **Close** goes back.
6. At 1440 wide, the list looks the same as before.
