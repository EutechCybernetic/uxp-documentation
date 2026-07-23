# WidgetDrawer

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=dashboard-widget-drawer-widgetdrawer--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="WidgetDrawer live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|widgets|[ComponentInstance[]](../types/ComponentInstance.md)|Yes|-|-|
|layouts|[ResponsiveLayouts](../types/ResponsiveLayouts.md)|Yes|-|-|
|onChange|(event: WidgetDrawerChangeEvent) => boolean \| Promise<boolean>|Yes|-|-|
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

