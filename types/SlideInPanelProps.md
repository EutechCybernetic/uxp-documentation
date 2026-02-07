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
     * Direction of the slide-in animation. Defaults to 'right'.
     */
    direction?: SlideInPanelDirection;

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
     */
    containerRef?: RefObject<HTMLElement>;
}
```

## Usage

```tsx
import { SlideInPanelProps } from 'uxp/components';
```

## Related Types

- [SlideInPanelDirection](../types/SlideInPanelDirection.md)

