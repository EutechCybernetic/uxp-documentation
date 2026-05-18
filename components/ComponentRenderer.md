# ComponentRenderer

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=componentrenderer--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ComponentRenderer live demo"
></iframe>



A component to fetch and render any widget or UI component.


## Installation

```tsx
import { ComponentRenderer } from 'uxp/components';
```

## Signature

```tsx
const ComponentRenderer: React.MemoExoticComponent<React.FunctionComponent<ComponentRendererProps>>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|moduleId|string|Yes|-|-|
|componentId|string|Yes|-|-|
|type|[ComponentType](../types/ComponentType.md)|Yes|-|-|
|additionalProps|any|No|-|-|
|notFoundMessage|string \| React.ReactNode|No|-|-|
|isPreview|boolean|No|-|-|

## Related Types

- [ComponentRendererProps](../types/ComponentRendererProps.md)
- [ComponentType](../types/ComponentType.md)

