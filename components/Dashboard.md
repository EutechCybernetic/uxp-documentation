# Dashboard

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=dashboard--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Dashboard live demo"
></iframe>





## Installation

```tsx
import { Dashboard } from 'uxp/components';
```

## Signature

```tsx
const Dashboard: React.FunctionComponent<DashboardProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|widgets|[ComponentInstance[]](../types/ComponentInstance.md)|Yes|-|-|
|layouts|[ResponsiveLayouts](../types/ResponsiveLayouts.md)|No|-|-|
|onSave|(widgets: ComponentInstance[], layouts: ResponsiveLayouts) => Promise<boolean>|Yes|-|-|
|margin|[number, number]|No|-|-|
|padding|[number, number]|No|-|-|
|isEditing|boolean|Yes|-|-|
|allowRearrange|boolean|No|-|-|
|breakpoints|Record<string, BreakPoint>|No|-|-|
|onChangeBreakPoint|(cols: number) => void|No|-|-|
|showSpacerWidget|boolean|No|-|-|
|emptyPlaceholder|{ /** * Whether to show placeholder */ show?: boolean; /** * Custom message to display */ message?: string; /** * Callback when placeholder is clicked */ onClick?: () => void; }|No|-|-|
|allowFreePositioning|boolean|No|-|-|
|allowOverlap|boolean|No|-|-|
|isBounded|boolean|No|-|-|
|transformScale|number|No|-|-|
|onContainerMount|(ref: HTMLDivElement) => void|No|-|-|
|breakpointOverride|string \| null|No|-|-|
|overlayMode|boolean|No|-|-|
|disableOverrideDimensions|boolean|No|-|-|
|compactType|'vertical' \| 'horizontal' \| null|No|-|-|
|maxRows|number|No|-|-|
|widgetPropsOverride|Record<string, any>|No|-|-|
|showGridlines|boolean|No|-|-|
|orientation|'vertical' \| 'horizontal'|No|-|-|
|rows|number|No|-|-|

## Related Types

- [DashboardProps](../types/DashboardProps.md)
- [ComponentInstance](../types/ComponentInstance.md)
- [ComponentType](../types/ComponentType.md)
- [ComponentConfigs](../types/ComponentConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [ConfigPanelProps](../types/ConfigPanelProps.md)
- [ComponentPreloader](../types/ComponentPreloader.md)
- [ILayout](../types/ILayout.md)
- [ResponsiveLayouts](../types/ResponsiveLayouts.md)
- [BreakPoint](../types/BreakPoint.md)

