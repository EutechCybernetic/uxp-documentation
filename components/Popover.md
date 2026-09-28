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

#### Basic popover

```tsx
tsx
<Popover
  title="User Info"
  content="John Doe - Software Engineer"
>
  <button>View Details</button>
</Popover>
```

#### Custom position

```tsx
tsx
<Popover
  title="Help"
  content="This is helpful information"
  position="right"
>
  <span>?</span>
</Popover>
```

#### JSX content

```tsx
tsx
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

## Live preview

[Open Popover in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-popover--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| (() => React.ReactNode)|Yes|-|title="Popover Title"|
|content|string \| (() => React.ReactNode)|Yes|-|content="Popover content here"|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|showArrow|boolean|No|-|-|
|children|React.ReactNode|No|-|<Popover title="Details" content="More information" > <button>Click me</button>…|

## Related Types

- [PopoverProps](../types/PopoverProps.md)
- [DropdownPosition](../types/DropdownPosition.md)

