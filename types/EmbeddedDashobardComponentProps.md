# EmbeddedDashobardComponentProps


Props for the EmbeddedDashboard component


## Definition

```tsx
export interface EmbeddedDashobardComponentProps {
    /**
     * List of dashboard IDs to try loading in priority order.
     * The component will use the first ID that has a record in the database.
     *
     * Accepts plain strings or { id, label } objects — use label to show a
     * human-readable name in the dashboard selector dropdown.
     *
     * Example:
     *   ids={[
     *     { id: `ibms/equipment/${equipmentKey}`, label: equipmentName },
     *     { id: `ibms/equipment/${equipmentType}`, label: equipmentType },
     *     { id: "ibms/equipment", label: "Default" }
     *   ]}
     */
    ids: DashboardIdEntry[];

    /**
     * Default configuration to use when no database record exists for any of the IDs.
     * Typically loaded from a JSON file.
     * When saving, will create a new record using the last (most generic) ID from the ids array.
     */
    defaultConfiguration?: ResponsiveWidgetLayoutConfiguration;

    /**
     * Enable edit/configure mode for the dashboard
     */
    allowToConfigure?: boolean;

    /**
     * Enable per-user-group dashboard layouts
     */
    enableUserGroupLayouts?: boolean;

    /**
     * Enable responsive breakpoint selection
     */
    enableResponsiveLayouts?: boolean;

    /**
     * Render the dashboard as a transparent overlay over a background component.
     * Widgets remain interactive; clicking empty areas passes through.
     */
    overlayMode?: boolean;

    /**
     * The object type context (e.g. 'Location', 'Asset').
     * Used for background surface compatibility filtering.
     */
    objectType?: string;

    /**
     * Enable background surface selection in edit mode.
     */
    enableBackgroundConfig?: boolean;

    /**
     * Additional props to pass through to all widgets.
     * Use this to forward global filters (e.g. URL params, event-driven context) from the parent.
     */
    autoPassedProps?: Record<string, any>;

    /**
     * Global dashboard settings fetched once by App.tsx (breakpoints + global defaults).
     * Used to show global default placeholders in the behavior settings panel.
     */
    globalDashboardSettings?: UXPGlobalDashboardSettings | null;
}
```

## Usage

```tsx
import { EmbeddedDashobardComponentProps } from 'uxp/components';
```

## Related Types

- [DashboardIdEntry](../types/DashboardIdEntry.md)
- [ResponsiveWidgetLayoutConfiguration](../types/ResponsiveWidgetLayoutConfiguration.md)
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
- [UXPGlobalDashboardSettings](../types/UXPGlobalDashboardSettings.md)

