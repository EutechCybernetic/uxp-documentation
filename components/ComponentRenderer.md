# ComponentRenderer

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=componentrenderer--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ComponentRenderer live demo"
></iframe>



A component to fetch and render any widget or UI component dynamically.


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
|moduleId|string|No|-|-|
|componentId|string|No|-|-|
|type|[ComponentType](../types/ComponentType.md)|No|-|-|
|componentInstance|[ComponentInstance](../types/ComponentInstance.md)|No|-|-|
|configuredProps|Record<string, any>|No|-|-|
|hasConfigured|boolean|No|-|-|
|onConfigureRequest|() => void|No|-|-|
|configNeededMessage|string \| React.ReactNode|No|-|-|
|additionalProps|any|No|-|-|
|notFoundMessage|string \| React.ReactNode|No|-|-|
|isPreview|boolean|No|-|-|
|onAddonInstalled|(instance: ComponentInstance) => void|No|-|-|
|forceConfigView|boolean|No|-|-|

## Related Types

- [ComponentRendererProps](../types/ComponentRendererProps.md)
- [ComponentType](../types/ComponentType.md)
- [ComponentInstance](../types/ComponentInstance.md)
- [ComponentConfigs](../types/ComponentConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [ConfigPanelProps](../types/ConfigPanelProps.md)
- [ComponentPreloader](../types/ComponentPreloader.md)
- [ILayout](../types/ILayout.md)

