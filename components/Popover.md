# Popover


A component that displays a popover with a title and content when clicking on its child element.
Uses the Dropdown component internally for positioning and click handling.



## Installation

```tsx
import { Popover } from 'uxp/components';
```

## Signature

```tsx
const Popover: React.FunctionComponent<PopoverProps>
```

## Examples

```tsx
Basic popover
```tsx
<Popover
  title="User Info"
  content="John Doe - Software Engineer"
>
  <button>View Details</button>
</Popover>
```

```tsx
Custom position
```tsx
<Popover
  title="Help"
  content="This is helpful information"
  position="right"
>
  <span>?</span>
</Popover>
```

```tsx
JSX content
```tsx
<Popover
  title={() => <strong>Important</strong>}
  content={() => (
    <div>
      <p>Line 1</p>
      <p>Line 2</p>
    </div>
  )}
>
  <button>Show Info</button>
</Popover>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| (() => React.ReactNode)|Yes|-|* ```tsx|
|content|string \| (() => React.ReactNode)|Yes|-|* ```tsx|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|showArrow|boolean|No|-|-|
|children|React.ReactNode|No|-|* ```tsx|

## Related Types

- [PopoverProps](../types/PopoverProps.md)
- [DropdownPosition](../types/DropdownPosition.md)

