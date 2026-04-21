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
     * If externalTriggerRef is provided, this prop is optional (external trigger mode).
     */
    trigger?: ReactNode;

    /**
     * Optional ref to the trigger element for precise click detection.
     * @deprecated Use externalTriggerRef instead for better control
     */
    triggerElementRef?: React.MutableRefObject<HTMLDivElement>;

    /**
     * External trigger reference (new v5 pattern).
     * When provided, the dropdown will use this ref for positioning and click detection
     * instead of wrapping the trigger element. This allows the trigger to be a sibling.
     */
    externalTriggerRef?: React.RefObject<HTMLElement>;

    /**
     * Additional class names to apply to the dropdown container.
     */
    className?: string;

    /**
     * Additional class names to apply to the dropdown content wrapper.
     */
    contentClassName?: string;

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

    /**
     * If true, makes the dropdown width match the trigger element width.
     */
    matchTriggerWidth?: boolean;

    /**
     * Minimum width for the dropdown. Can be number (px) or string (with units).
     */
    minWidth?: number | string;

    /**
     * Maximum width for the dropdown. Can be number (px) or string (with units).
     */
    maxWidth?: number | string;
}
```

## Usage

```tsx
import { DropdownProps } from 'uxp/components';
```

## Related Types

- [DropdownPosition](../types/DropdownPosition.md)

