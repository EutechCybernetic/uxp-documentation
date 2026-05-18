# ObjectDetailsPanel

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-tables-object-search-objectdetailspanel--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ObjectDetailsPanel live demo"
></iframe>



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

