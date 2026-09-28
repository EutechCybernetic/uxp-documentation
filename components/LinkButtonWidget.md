# LinkButtonWidget

> **Deprecated.** Do not use. There is no replacement.

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

## Live preview

[Open LinkButtonWidget in the playground →](<https://story.uxp.iviva.com/?path=/docs/buttons-linkbuttonwidget--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/buttons-linkbuttonwidget--docs&args=target%3A_blank%3Bicon%3Apath+to+your+icon%3Blabel%3AGo+to+Google&props=%7B%22link%22%3A%22https%3A%2F%2Fgoogle.com%22%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|link|string|Yes|-|"https://www.iviva.com"|
|target|"_self" \| "_blank" \| "_parent"|No|'_self'|"_blank"|
|icon|string|Yes|-|"https://static.iviva.com/iviva-logo-light.png"|
|label|string|Yes|-|"Visit iviva"|

## Related Types

- [ILinkButtonWidgetProps](../types/ILinkButtonWidgetProps.md)

