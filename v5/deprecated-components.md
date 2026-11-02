# Deprecated list components

v5 has two standard list components. Use them in all new code.

- **`ObjectSearchComponent`**: the main list. Use it for view pages and any list of records with search, filters, views or a details panel.
- **`SimpleConfigurationTable`**: the secondary list. Use it for tables inside details panels and other sections. Also for simple configuration screens with two or three columns.

These list components are deprecated:

- `DataList`
- `DataTable`
- `TableComponent`
- `CRUDComponent`

They keep working. Existing apps need no change. They get no new features and no fixes.

To replace one, pick either standard component. Choose by what the screen needs, not by the old component.

## Replacing a deprecated component

### DataList → ObjectSearchComponent

Before:

```tsx
<DataList
    data={(max, last) => getActivity(max, last)}
    renderItem={(item) => <ActivityRow item={item} />}
    pageSize={20}
/>
```

After:

```tsx
<ObjectSearchComponent
    idField="id"
    data={async (page, pageSize) => ({ items: await loadActivity(page, pageSize) })}
    total={0}
    columns={[{ id: 'item', label: '', renderColumn: (item) => <ActivityRow item={item} /> }]}
    pageSize={20}
    paging="infinite"
    hidePaging
/>
```

### DataTable → ObjectSearchComponent

Before:

```tsx
<DataTable
    data={(max, last) => getRequests(max, last)}
    pageSize={10}
    columns={[
        { title: 'Request', renderColumn: (item) => <RequestCell item={item} /> },
        { title: 'Status', renderColumn: (item) => item.status }
    ]}
/>
```

After:

```tsx
<ObjectSearchComponent
    idField="id"
    data={async (page, pageSize) => ({ items: await loadRequests(page, pageSize) })}
    total={async () => countRequests()}
    pageSize={10}
    columns={[
        { id: 'request', label: 'Request', renderColumn: (item) => <RequestCell item={item} /> },
        { id: 'status', label: 'Status' }
    ]}
/>
```

### TableComponent → SimpleConfigurationTable

Before:

```tsx
<TableComponent
    data={rules}
    total={rules.length}
    pageSize={10}
    columns={[
        { id: 'name', label: 'Name' },
        { id: 'value', label: 'Value' }
    ]}
    noItemsMessage="No rules"
/>
```

After:

```tsx
<SimpleConfigurationTable
    data={rules}
    pageSize={10}
    columns={[
        { id: 'name', label: 'Name' },
        { id: 'value', label: 'Value' }
    ]}
    noDataText="No rules"
/>
```

### CRUDComponent → SimpleConfigurationTable

Before:

```tsx
<CRUDComponent
    list={{
        title: 'Contacts',
        columns: [{ id: 'name', label: 'Name' }, { id: 'email', label: 'Email' }],
        defaultPageSize: 10,
        data: { getData: contacts },
        onDeleteItem: deleteContact
    }}
    add={{ title: 'New contact', formStructure: contactForm, onSubmit: addContact }}
    edit={{ title: 'Edit contact', formStructure: contactForm, onSubmit: updateContact }}
/>
```

After (edit in the row):

```tsx
<SimpleConfigurationTable
    data={contacts}
    pageSize={10}
    columns={[
        { id: 'name', label: 'Name' },
        { id: 'email', label: 'Email' }
    ]}
    onAddItem={addContact}
    onUpdateItem={updateContact}
    onDeleteItem={deleteContact}
/>
```

The save callbacks return `{ success: boolean, error?: string }`.
