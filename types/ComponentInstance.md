# ComponentInstance

## Definition

```tsx
export interface ComponentInstance {
    _id: string;
    id: string;
    key: string;
    name: string;
    description?: string;
    /** The React component to render. */
    component: React.ComponentType<any>;
    configs?: ComponentConfigs;
    defaultProps?: Record<string, any>;
    /** Admin-configured prop values (was `.props` on IWidgetInstance). */
    configuredProps?: Record<string, any>;
    hasConfigured: boolean;
    /** Grid layout — used by dashboard grids. */
    layout?: ILayout | any;
    /** Text direction — applies to all component types. */
    direction?: 'ltr' | 'rtl';
    sourceUrl?: string;
    preloaded?: boolean;
    isNotAvalable?: boolean;
    // Marketplace / template fields
    installed?: boolean;
    isTemplate?: boolean;
    isDefaultTemplate?: boolean;
    templateKey?: string;
    templateType?: string;
    category?: string;
    usecaseId?: string;
    usecaseName?: string;
    definitionPath?: string;
    vendor?: string;
    localizedName?: string;
    localizedDescription?: string;
    external?: {
        styles?: Record<string, string>;
        scripts?: Record<string, string>;
    };
}
```

## Usage

```tsx
import { ComponentInstance } from 'uxp/components';
```

## Related Types

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

