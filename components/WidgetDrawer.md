# WidgetDrawer

> **Part of [Dashboard](Dashboard.md).** Usually used through Dashboard. Use it directly to build a custom layout.


Widget drawer modal wrapper component that handles widget initialization internally



## Installation

```tsx
import { WidgetDrawer } from 'uxp/components';
```

## Signature

```tsx
const WidgetDrawer: React.FunctionComponent<WidgetDrawerProps>
```

## Examples

```tsx
tsx
<WidgetDrawer
  show={showDrawer}
  onClose={() => setShowDrawer(false)}
  widgets={dashboardWidgets}
  layouts={dashboardLayouts}
  onChange={(event) => {
    if (event.action === 'select') {
      // Raw selection (no layout processing)
      handleRawSelection(event.items)
    } else {
      // Add or delete (with layout processing)
      setWidgets(event.widgets!)
      setLayouts(event.layouts!)
    }
    return true
  }}
  config={{ mode: 'multi' }}
/>
```

## Live preview

[Open WidgetDrawer in the playground →](<https://story.uxp.iviva.com/?path=/docs/dashboard-widgetdrawer--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|true|
|onClose|() => void|Yes|-|Log onClose={() => console.log('closed')}|
|widgets|[ComponentInstance[]](../types/ComponentInstance.md)|Yes|-|[]|
|layouts|[ResponsiveLayouts](../types/ResponsiveLayouts.md)|Yes|-|{ lg: [] }|
|onChange|(event: WidgetDrawerChangeEvent) => boolean \| Promise<boolean>|Yes|-|Accept the change onChange={(event) => { console.log('drawer change', event); r…|
|isBounded|boolean|No|-|-|
|maxColumns|number|No|-|-|
|config|[WidgetDrawerConfig](../types/WidgetDrawerConfig.md)|No|-|-|
|orientation|'vertical' \| 'horizontal'|No|-|-|

## Related Types

- [WidgetDrawerProps](../types/WidgetDrawerProps.md)
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
- [WidgetDrawerChangeEvent](../types/WidgetDrawerChangeEvent.md)
- [IWidget](../types/IWidget.md)
- [IWidgetConfigs](../types/IWidgetConfigs.md)
- [IRenderUIItemProps](../types/IRenderUIItemProps.md)
- [WidgetDrawerType](../types/WidgetDrawerType.md)
- [WidgetDrawerConfig](../types/WidgetDrawerConfig.md)
- [WidgetDrawerMode](../types/WidgetDrawerMode.md)
- [WidgetDrawerStatus](../types/WidgetDrawerStatus.md)

