# ComponentRenderer


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

