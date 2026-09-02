# IWidget

## Definition

```tsx
export interface IWidget {
    id: string,
    name: string,
    title?: string,
    label?: string,
    description?: string,
    tags?: string[],
    widget: any,
    configs?: IWidgetConfigs,
    installed?: boolean,
    deleted?: boolean,
    isNew?: string,
    icon?: string,
    vendor?: string,
    sourceUrl?: string,
    defaultProps?: { [propName: string]: any }
    external?: {
        styles?: { [key: string]: string }
        scripts?: { [key: string]: string }
    },
    isTemplate?: boolean,
    isDefaultTemplate?: boolean,
    props?: { [key: string]: any }
    templateKey?: string
    templateType?: string,
    category?: string,
    usecaseId?: string,
    usecaseName?: string,
    definitionPath?: string,
    localizedName?: string,
    localizedDescription?: string,
    // Permissions — auto-populated from the bundle.json entry by the per-project uxp.ts wrapper.
    // Do not set manually in register calls; bundle.json is the single authoring place.
    appRoles?: string[],    // qualified "App:role" strings — empty/absent = visible to everyone
    userGroups?: string[]   // user group keys
    /** When denied: `false` hides the component; `true`/absent shows the error (default). Authored in bundle.json. */
    showUnauthorizedError?: boolean
}
```

## Usage

```tsx
import { IWidget } from 'uxp/components';
```

## Related Types

- [IWidgetConfigs](../types/IWidgetConfigs.md)
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

