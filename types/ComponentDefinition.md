# ComponentDefinition

## Definition

```tsx
export interface ComponentDefinition {
    id: string;             // full 3-part ID as registered: moduleId/type/compId
    normalizedId: string;   // pre-computed: moduleId/compId — set by registerComponent, never re-derived at lookup
    name?: string;
    description?: string;
    component: React.ComponentType<any>;
    modes: ComponentMode[];
    configs?: ComponentConfigs;
    icon?: string;
    tags?: string[];
    compatibleObjects?: string[];
    sourceUrl?: string;
    installed?: boolean;
    deleted?: boolean;
    isTemplate?: boolean;
    isDefaultTemplate?: boolean;
    defaultProps?: Record<string, any>;
    props?: Record<string, any>;
    templateKey?: string;
    templateType?: string;
    category?: string;
    usecaseId?: string;
    usecaseName?: string;
    definitionPath?: string;
    vendor?: string;
    external?: { styles?: Record<string, string>; scripts?: Record<string, string> };
    showDefaultHeader?: boolean;
    /**
     * Lucy model-designer block definition (mode 'lucy-block'). The designer
     * merges this over the block's ObjectMap catalog entry — see
     * iviva-net-core/docs/apps/lucy-connector-blocks.md.
     */
    blockConfig?: unknown;
    // Permissions — auto-populated from the bundle.json entry by the per-project uxp.ts wrapper.
    // Do not set manually in register calls; bundle.json is the single authoring place.
    appRoles?: string[];    // qualified "App:role" strings — empty/absent = visible to everyone
    userGroups?: string[];  // user group keys
}
```

## Usage

```tsx
import { ComponentDefinition } from 'uxp/components';
```

## Related Types

- [ComponentType](../types/ComponentType.md)
- [ComponentMode](../types/ComponentMode.md)
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

