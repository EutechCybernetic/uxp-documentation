# ObjectDetailsPanel


A component that displays a details panel for a selected row, with a title, toolbar, and main/additional details sections.



## Installation

```tsx
import { ObjectDetailsPanel } from 'uxp/components';
```

## Signature

```tsx
const ObjectDetailsPanel: React.MemoExoticComponent<React.ForwardRefExoticComponent<React.RefAttributes<ObjectDetailsPanelHandlers> & ObjectDetailsPanelProps>>
```

## Examples

```tsx
<ObjectDetailsPanel
  title="User Details"
  data={{ id: '1', name: 'John Doe' }}
  generalDetails={<div>General info</div>}
  idField="id"
/>
```

```tsx
<ObjectDetailsPanel
  title={(row) => `Details for ${row.name}`}
  data={async () => ({ id: '1', name: 'John Doe', email: 'john@example.com' })}
  generalDetails={(row) => ({ fields: [{ label: 'Name', value: row.name }, { label: 'Email', value: row.email }] })}
  toolbarItems={{
    left: [{ icon: 'edit', label: 'Edit', onClick: (e, row) => console.log('Edit', row) }],
    right: [{ icon: 'share', label: 'Share' }]
  }}
  otherDetails={<div>Additional info</div>}
  additionlDetails={[
    { id: 'notes', icon: 'note', label: 'Notes', content: 'Sample notes' },
    { id: 'history', icon: 'history', label: 'History', content: (row) => <div>History for {row.name}</div> }
  ]}
  showCloseButton={true}
  onClose={() => console.log('Panel closed')}
/>
```

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|refresh|() => void|-|

## Live preview

[Open ObjectDetailsPanel in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-object-search-details-panel-objectdetailspanel--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/data-display-object-search-details-panel-objectdetailspanel--docs&args=title%3AUser+Details%3BidField%3Aid%3BobjectType%3A%21undefined%3BobjectKey%3A%21undefined&props=%7B%22data%22%3A%7B%22id%22%3A%221%22%2C%22name%22%3A%22John+Doe%22%7D%7D>)

