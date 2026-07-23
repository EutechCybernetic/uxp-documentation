# ResponsiveWidgetLayoutConfiguration

## Definition

```tsx
export interface ResponsiveWidgetLayoutConfiguration {
    widgets: ComponentInstance[],
    layouts: any,
    installed?: ComponentInstance[] // legacy v4 field — optional in v5
    // User-group-specific layouts (optional)
    userGroupLayouts?: {
        [userGroup: string]: {
            widgets: ComponentInstance[];
            layouts: any;
        }
    };
    backgroundConfig?: BackgroundConfig;
    gridSettings?: GridSettings;
}
```

## Usage

```tsx
import { ResponsiveWidgetLayoutConfiguration } from 'uxp/components';
```

## Related Types

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
- [BackgroundConfig](../types/BackgroundConfig.md)
- [GridSettings](../types/GridSettings.md)

