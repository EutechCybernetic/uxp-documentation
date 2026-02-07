# DropdownProps


Props for the Dropdown component.


## Definition

```tsx
export interface DropdownProps {
    /**
     * Content to display inside the dropdown.
     */
    content: ReactNode;

    /**
     * Element or component that triggers the dropdown when clicked.
     */
    trigger: ReactNode;

    /**
     * Optional ref to the trigger element for precise click detection.
     */
    triggerElementRef?: React.MutableRefObject<HTMLDivElement>;

    /**
     * Additional class names to apply to the dropdown container.
     */
    className?: string;

    /**
     * Position of the dropdown relative to the trigger. Defaults to 'bottom-left'.
     */
    position?: DropdownPosition;

    /**
     * Duration of the dropdown animation in milliseconds. Defaults to 200.
     */
    duration?: number;

    /**
     * Controls whether the dropdown is open (controlled mode requires onToggle).
     */
    isOpen?: boolean;

    /**
     * Prevents the dropdown from opening if true.
     */
    preventOpening?: boolean;

    /**
     * Callback triggered when the dropdown is toggled (required for controlled mode).
     */
    onToggle?: () => void;

    /**
     * If true, shows an anchor element connecting the dropdown to the trigger. Defaults to false.
     */
    showAnchor?: boolean;
}
```

## Usage

```tsx
import { DropdownProps } from 'uxp/components';
```

## Related Types

- [DropdownPosition](../types/DropdownPosition.md)

