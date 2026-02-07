# LinkButtonWidget

This widget will give a simple widget with configurable option to create a link button



## Installation

```tsx
import { LinkButtonWidget } from 'uxp/components';
```

## Signature

```tsx
const LinkButtonWidget: React.FunctionComponent<ILinkButtonWidgetProps>
```

## Examples

```tsx
<LinkButtonWidget
     link="https://google.com"
     target="_blank"
     icon="path to your icon"
     label="Go to Google"
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|link|string|Yes|-|-|
|target|"_self" \| "_blank" \| "_parent"|No|-|-|
|icon|string|Yes|-|-|
|label|string|Yes|-|-|

## Related Types

- [ILinkButtonWidgetProps](../types/ILinkButtonWidgetProps.md)

