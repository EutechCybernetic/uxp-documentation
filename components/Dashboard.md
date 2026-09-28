# Dashboard





## Installation

```tsx
import { Dashboard } from 'uxp/components';
```

## Signature

```tsx
const Dashboard: React.FunctionComponent<DashboardProps>
```

## Live preview

[Open Dashboard in the playground →](<https://story.uxp.iviva.com/?path=/docs/dashboard-dashboard--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|widgets|[ComponentInstance[]](../types/ComponentInstance.md)|Yes|-|[ { _id: 'w1', id: 'storybook/widget/energy-mix', key: 'w1', name: 'Energy mix'…|
|layouts|[ResponsiveLayouts](../types/ResponsiveLayouts.md)|No|-|{ lg: [ { i: 'w1', x: 0, y: 0, w: 10, h: 12 }, { i: 'w2', x: 10, y: 0, w: 10, h…|
|onSave|(widgets: ComponentInstance[], layouts: ResponsiveLayouts) => Promise<boolean>|Yes|-|Log the save onSave={async (widgets, layouts) => { console.log('saved', widgets…|
|margin|[number, number]|No|-|-|
|padding|[number, number]|No|-|-|
|isEditing|boolean|Yes|-|false|
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
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [ConfigPanelProps](../types/ConfigPanelProps.md)
- [ComponentPreloader](../types/ComponentPreloader.md)
- [ILayout](../types/ILayout.md)
- [ResponsiveLayouts](../types/ResponsiveLayouts.md)
- [BreakPoint](../types/BreakPoint.md)

