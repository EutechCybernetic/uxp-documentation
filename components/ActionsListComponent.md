# ActionsListComponent


A component that renders a list of actions with support for nested dropdowns.



## Installation

```tsx
import { ActionsListComponent } from 'uxp/components';
```

## Signature

```tsx
const ActionsListComponent: React.FunctionComponent<ActionsListProps>
```

## Examples

```tsx
<ActionsListComponent
  actions={[
    { label: 'Edit', icon: 'edit', onClick: async (item) => console.log('Edit', item) },
    { label: 'Delete', icon: 'trash', onClick: async (item) => console.log('Delete', item) }
  ]}
  item={{ id: '1', name: 'Item' }}
/>
```

```tsx
<ActionsListComponent
  actions={[
    { label: 'Edit', icon: 'edit', onClick: async (item) => console.log('Edit', item) },
    {
      label: 'More', icon: 'ellipsis-h',
      children: [
        { label: 'Share', icon: 'share', onClick: async (item) => console.log('Share', item) },
        { label: 'Archive', icon: 'archive', onClick: async (item) => console.log('Archive', item) }
      ]
    }
  ]}
  item={{ id: '1', name: 'Item' }}
  className="custom-actions-list"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|actions|Action[] \| ((item?: any) => Action[] \| React.ReactNode)|Yes|-|-|
|item|any|No|-|-|
|className|string|No|-|-|

## Related Types

- [ActionsListProps](../types/ActionsListProps.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)

