# TransitionProps


Props for the Transition component.


## Definition

```tsx
interface TransitionProps {
    /**
     * The child element to apply the transition to, must be a single React element.
     * @example Box
     * ```tsx
     * <div style={{ padding: 16, background: '#e3f2fd' }}>Shown with a transition</div>
     * ```
     */
    children: React.ReactElement;

    /**
     * Base class name for transition states (e.g., 'my-transition' for 'my-transition-enter').
     * @example "fade"
     */
    className: string;

    /**
     * Controls whether the transition is in the entered (true) or exited (false) state.
     * @example true
     */
    in: boolean;

    /**
     * Duration of the transition animation in milliseconds.
     * @example 300
     */
    duration: number;

    /**
     * If true, unmounts the child element when the transition exits. Defaults to false.
     */
    unmountOnExit?: boolean;
}
```

## Usage

```tsx
import { TransitionProps } from 'uxp/components';
```

