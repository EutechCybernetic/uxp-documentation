# HelpPopoverProps


Props for the HelpPopover component.


## Definition

```tsx
export interface HelpPopoverProps {
    /** Popover panel title */
    title: string;
    /** Ordered list of help sections (heading + body pairs) */
    sections: HelpSection[];
    /** Popover position relative to the trigger button (default: 'bottom-right') */
    position?: DropdownPosition;
    /** Icon for the trigger button (default: 'fal circle-question') */
    icon?: string;
    /** Variant for the trigger button (default: 'info') */
    variant?: ButtonComponentVarient;
}
```

## Usage

```tsx
import { HelpPopoverProps } from 'uxp/components';
```

## Related Types

- [HelpSection](../types/HelpSection.md)
- [DropdownPosition](../types/DropdownPosition.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)

