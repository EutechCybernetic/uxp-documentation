# ActionsListComponent


A component that renders a list of actions with support for nested dropdowns and selected state.



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
// Basic usage
<ActionsListComponent
  actions={[
    { label: 'Edit', icon: 'edit', onClick: async (item) => console.log('Edit', item) },
    { label: 'Delete', icon: 'trash', onClick: async (item) => console.log('Delete', item) }
  ]}
  item={{ id: '1', name: 'Item' }}
/>
```

```tsx
// With selected state (e.g., theme selector)
<ActionsListComponent
  actions={[
    { label: 'Light', value: 'light', onClick: () => setTheme('light') },
    { label: 'Dark', value: 'dark', onClick: () => setTheme('dark') }
  ]}
  selectedValue="light"
/>
```

```tsx
// With nested dropdowns
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
|selectedValue|any|No|-|-|
|className|string|No|-|-|
|parentDropdownRef|React.RefObject<DropdownHandlers>|No|-|-|

## Related Types

- [ActionsListProps](../types/ActionsListProps.md)
- [Action](../types/Action.md)
- [BaseAction](../types/BaseAction.md)
- [ActionWithChildren](../types/ActionWithChildren.md)
- [DropdownHandlers](../types/DropdownHandlers.md)

