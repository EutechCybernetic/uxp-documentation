# SlideInPanelProps


Props for the SlideInPanel component.


## Definition

```tsx
export interface SlideInPanelProps {
    /**
     * Content to display inside the slide-in panel.
     */
    children: ReactNode;

    /**
     * Controls whether the panel is open (true) or closed (false).
     */
    isOpen: boolean;

    /**
     * Callback triggered when the panel is closed, typically via backdrop click.
     */
    onClose: () => void;

    /**
     * Optional guard consulted before a backdrop-click or Escape dismissal.
     * Return `false` (or a promise resolving to `false`) to block the dismissal;
     * return `true` to proceed with `onClose`. When omitted, both paths dismiss
     * unconditionally (existing behaviour). Programmatic `close()` and any explicit
     * Cancel/Save inside the panel are NOT gated by this.
     */
    beforeDismiss?: (source: 'backdrop' | 'escape') => boolean | Promise<boolean>;

    /**
     * Rendering mode of the panel.
     * - `full`: fills the main content area (default)
     * - `modal`: centered overlay auto-sized to content
     */
    mode?: SlideInPanelMode;

    /**
     * Direction of the slide-in animation. Only applies in `full` mode. Defaults to 'right'.
     */
    direction?: SlideInPanelDirection;

    /**
     * Explicit width for the panel. Applies in `modal` mode.
     * Accepts any valid CSS width value (e.g. `'400px'`, `'50vw'`).
     */
    width?: string;

    /**
     * Explicit height for the panel. Applies in `modal` mode.
     * Accepts any valid CSS height value (e.g. `'300px'`, `'80vh'`).
     */
    height?: string;

    /**
     * Additional CSS class names to apply to the panel content.
     */
    className?: string;

    /**
    * Additional CSS class names to apply to the wrapper.
    */
    wrapperClassName?: string;

    /**
     * If true, unmounts the panel when it exits. Defaults to true.
     */
    unmountOnExit?: boolean;

    /**
     * Reference to a container element to position the panel relative to.
     * If provided, the panel will match the size and position of this element.
     * Only applies in `full` mode.
     */
    containerRef?: RefObject<HTMLElement>;

    /**
     * Override the panel's border radius. Accepts any valid CSS
     * border-radius value (e.g. `'0'`, `'0.5rem'`). When omitted, the
     * SCSS default applies (rounded top-start corner in `full` mode,
     * fully rounded in `modal` mode).
     */
    borderRadius?: string;
}
```

## Usage

```tsx
import { SlideInPanelProps } from 'uxp/components';
```

## Related Types

- [SlideInPanelMode](../types/SlideInPanelMode.md)
- [SlideInPanelDirection](../types/SlideInPanelDirection.md)

