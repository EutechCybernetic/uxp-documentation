# LinkButtonWidget

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=other-linkbuttonwidget--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="LinkButtonWidget live demo"
></iframe>


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

