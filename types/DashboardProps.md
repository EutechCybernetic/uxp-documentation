# DashboardProps


Props for the Dashboard component


## Definition

```tsx
export interface DashboardProps {
    /**
     * Array of widget instances to render
     */
    widgets: ComponentInstance[];

    /**
     * Optional responsive layout overrides for different breakpoints
     */
    layouts?: ResponsiveLayouts;

    /**
     * Callback to save dashboard state (called with processed widgets and layouts)
     */
    onSave: (widgets: ComponentInstance[], layouts: ResponsiveLayouts) => Promise<boolean>;

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

    /**
     * Render the dashboard as a transparent overlay.
     * The container becomes pointer-events: none so clicks pass through to the
     * content beneath, while individual widget items remain interactive.
     * Implies allowOverlap=true, allowFreePositioning=true, isBounded=true,
     * showSpacerWidget=false unless explicitly overridden.
     */
    overlayMode?: boolean;

    /**
     * Disable breakpoint override dimensions. When true, the container never gets
     * a forced fixed width/height from the breakpoint preview feature. Use this for
     * embedded mini-dashboards (e.g. WidgetPanel) where the container should always
     * fill its available space.
     */
    disableOverrideDimensions?: boolean;

    /**
     * How items compact after a drag/resize. 'vertical' stacks downward,
     * 'horizontal' packs leftward (use with maxRows=1 for a horizontal strip),
     * null disables compaction. Default: 'vertical'.
     */
    compactType?: 'vertical' | 'horizontal' | null;

    /**
     * Maximum number of rows. Useful for horizontal orientation to prevent
     * widgets from stacking vertically (e.g. maxRows=1 for a single-row strip).
     */
    maxRows?: number;

    /**
     * Extra props merged into every widget at render time (not init time).
     * Use this for runtime context like URL params, event payloads, or global filters
     * that should not trigger a full dashboard re-initialization when they change.
     */
    widgetPropsOverride?: Record<string, any>;

    /**
     * Show gridlines in edit mode based on cell size.
     */
    showGridlines?: boolean;

    /**
     * Optional layout orientation mode.
     * - 'vertical': widgets stack full-width, scroll Y, height-only resize
     * - 'horizontal': single-row strip using `rows` as the row count; widgets fill container
     *   height, scroll X, grid grows rightward. `compactType`/`maxRows`/`resizeHandles` are
     *   all derived from this — do not set them manually when using orientation.
     */
    orientation?: 'vertical' | 'horizontal';

    /**
     * Number of rows for horizontal orientation (default: 3).
     * Row height = (containerHeight - margins) / rows (1:1 cells).
     * Also sets maxRows so items can't spill below the strip.
     */
    rows?: number;
}
```

## Usage

```tsx
import { DashboardProps } from 'uxp/components';
```

## Related Types

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

