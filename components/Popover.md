# Popover


Show a popup bubble when clicking on an element.
Wrap the element you want to target in the popup bubble.



## Installation

```tsx
import { Popover } from 'uxp/components';
```

## Signature

```tsx
const Popover: React.FunctionComponent<IPopoverProps>
```

## Examples

```tsx
<Popover title='Details' content={'Name:' + props.name}>
     <span>Click to see name</span>
</Popover>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| IContentFunction|Yes|-|*|
|content|string \| IContentFunction|Yes|-|*|
|position|[IPopoverPosition](../types/IPopoverPosition.md)|No|-|-|
|children|React.ReactNode|No|-|*|

## Related Types

- [IPopoverProps](../types/IPopoverProps.md)
- [IContentFunction](../types/IContentFunction.md)
- [IPopoverPosition](../types/IPopoverPosition.md)

