# TransitionProps


Props for the Transition component.


## Definition

```tsx
interface TransitionProps {
    /**
     * The child element to apply the transition to, must be a single React element.
     */
    children: React.ReactElement;

    /**
     * Base class name for transition states (e.g., 'my-transition' for 'my-transition-enter').
     */
    className: string;

    /**
     * Controls whether the transition is in the entered (true) or exited (false) state.
     */
    in: boolean;

    /**
     * Duration of the transition animation in milliseconds.
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

