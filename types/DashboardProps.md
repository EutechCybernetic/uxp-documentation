# DashboardProps


Props for the Dashboard component


## Definition

```tsx
export interface DashboardProps {
    /**
     * Array of widget instances to render
     */
    widgets: IWidgetInstance[];

    /**
     * Optional responsive layout overrides for different breakpoints
     */
    layouts?: ResponsiveLayouts;

    /**
     * Callback to save dashboard state (called with processed widgets and layouts)
     */
    onSave: (widgets: IWidgetInstance[], layouts: ResponsiveLayouts) => Promise<boolean>;

    /**
     * Grid margin [horizontal, vertical] in pixels (default: [10, 10])
     */
    margin?: [number, number];

    /**
     * Grid padding [horizontal, vertical] in pixels (default: [10, 10])
     */
    padding?: [number, number];

    /**
     * Whether dashboard is in editing mode
     */
    isEditing: boolean;

    /**
     * Allow dragging/rearranging widgets without full edit mode
     */
    allowRearrange?: boolean;

    /**
     * Responsive breakpoints and columns count configuration
     */
    breakpoints?: Record<string, BreakPoint>;

    /**
     * Callback when breakpoint changes
     */
    onChangeBreakPoint?: (cols: number) => void;

    /**
     * Show spacer widget at bottom for extra scrolling space
     */
    showSpacerWidget?: boolean;

    /**
     * Show placeholder widget when dashboard is empty
     */
    emptyPlaceholder?: {
        /**
         * Whether to show placeholder
         */
        show?: boolean;
        /**
         * Custom message to display
         */
        message?: string;
        /**
         * Callback when placeholder is clicked
         */
        onClick?: () => void;
    }

    /**
     * Allow free positioning of widgets without vertical compaction (disables auto-stacking)
     */
    allowFreePositioning?: boolean;

    /**
     * Allow widgets to overlap/stack on top of each other (default: false)
     */
    allowOverlap?: boolean;

    /**
     * Restrict widgets to grid boundaries, preventing drag/resize outside viewport (default: false)
     */
    isBounded?: boolean;

    /**
     * Transform scale for zoomed/scaled containers (default: 1)
     */
    transformScale?: number;

    /**
     * Callback when dashboard container mounts (provides ref to container element)
     */
    onContainerMount?: (ref: HTMLDivElement) => void;

    /**
     * Force specific breakpoint for preview/editing (null = auto-responsive)
     */
    breakpointOverride?: string | null;
}
```

## Usage

```tsx
import { DashboardProps } from 'uxp/components';
```

## Related Types

- [IWidgetInstance](../types/IWidgetInstance.md)
- [ILayout](../types/ILayout.md)
- [IWidgetConfigs](../types/IWidgetConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [IConfigPanelProps](../types/IConfigPanelProps.md)
- [IContextProvider](../types/IContextProvider.md)
- [IPartialContextProvider](../types/IPartialContextProvider.md)
- [Language](../types/Language.md)
- [ICustomThemes](../types/ICustomThemes.md)
- [IThemeProps](../types/IThemeProps.md)
- [ThemeType](../types/ThemeType.md)
- [UserDetails](../types/UserDetails.md)
- [NavigationLink](../types/NavigationLink.md)
- [Routes](../types/Routes.md)
- [ConfiguredPage](../types/ConfiguredPage.md)
- [ComponentType](../types/ComponentType.md)
- [IUXPFunctions](../types/IUXPFunctions.md)
- [ViewOverride](../types/ViewOverride.md)
- [Environment](../types/Environment.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [IDataFunction](../types/IDataFunction.md)
- [QueryParams](../types/QueryParams.md)
- [ExecutionResult](../types/ExecutionResult.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [LucyQueryResult](../types/LucyQueryResult.md)
- [IWidgetPreloader](../types/IWidgetPreloader.md)
- [ResponsiveLayouts](../types/ResponsiveLayouts.md)
- [BreakPoint](../types/BreakPoint.md)

