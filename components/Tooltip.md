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

#### Basic tooltip

```tsx
tsx
<Tooltip content="Helpful hint">
  <button>Hover me</button>
</Tooltip>
```

#### Custom position

```tsx
tsx
<Tooltip content="I appear on the right" position="right">
  <span>Hover here</span>
</Tooltip>
```

#### JSX content

```tsx
tsx
<Tooltip content={() => <strong>Bold tooltip</strong>}>
  <button>Fancy tooltip</button>
</Tooltip>
```

## Live preview

[Open Tooltip in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-tooltip--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|content|string \| (() => React.ReactNode)|Yes|-|<Tooltip content="This is a tooltip" />|
|position|[TooltipPosition](../types/TooltipPosition.md)|No|-|-|
|showArrow|boolean|No|-|-|
|children|React.ReactNode|No|-|<Tooltip content="This is a tooltip"> <button>Hover me</button> </Tooltip>|

## Related Types

- [TooltipProps](../types/TooltipProps.md)
- [TooltipPosition](../types/TooltipPosition.md)

