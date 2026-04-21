# Tooltip


A component that displays a tooltip when hovering over its child element.
Uses v5 styling patterns and positioning logic.



## Installation

```tsx
import { Tooltip } from 'uxp/components';
```

## Signature

```tsx
const Tooltip: React.FunctionComponent<TooltipProps>
```

## Examples

```tsx
Basic tooltip
```tsx
<Tooltip content="Helpful hint">
  <button>Hover me</button>
</Tooltip>
```

```tsx
Custom position
```tsx
<Tooltip content="I appear on the right" position="right">
  <span>Hover here</span>
</Tooltip>
```

```tsx
JSX content
```tsx
<Tooltip content={() => <strong>Bold tooltip</strong>}>
  <button>Fancy tooltip</button>
</Tooltip>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|content|string \| (() => React.ReactNode)|Yes|-|* ```tsx|
|position|[TooltipPosition](../types/TooltipPosition.md)|No|-|-|
|showArrow|boolean|No|-|-|
|children|React.ReactNode|No|-|* ```tsx|

## Related Types

- [TooltipProps](../types/TooltipProps.md)
- [TooltipPosition](../types/TooltipPosition.md)

