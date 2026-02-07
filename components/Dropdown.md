# Dropdown


A component that displays a dropdown menu with customizable positioning and animation.



## Installation

```tsx
import { Dropdown } from 'uxp/components';
```

## Signature

```tsx
const Dropdown: React.ForwardRefExoticComponent<React.RefAttributes<DropdownHandlers> & DropdownProps>
```

## Examples

```tsx
<Dropdown
  trigger={<button>Click me</button>}
  content={<div>Dropdown content</div>}
/>
```

```tsx
<Dropdown
  trigger={<button>Menu</button>}
  content={
    <div>
      <div>Option 1</div>
      <div>Option 2</div>
    </div>
  }
  position="top-right"
  duration={300}
  isOpen={true}
  onToggle={() => console.log('Dropdown toggled')}
  showAnchor={true}
  className="custom-dropdown"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|content|ReactNode|Yes|-|-|
|trigger|ReactNode|Yes|-|-|
|triggerElementRef|React.MutableRefObject<HTMLDivElement>|No|-|-|
|className|string|No|-|-|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|duration|number|No|-|-|
|isOpen|boolean|No|-|-|
|preventOpening|boolean|No|-|-|
|onToggle|() => void|No|-|-|
|showAnchor|boolean|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|open|() => void|Opens the dropdown. |
|close|() => void|Closes the dropdown. |

## Related Types

- [DropdownProps](../types/DropdownProps.md)
- [DropdownPosition](../types/DropdownPosition.md)
- [DropdownHandlers](../types/DropdownHandlers.md)

