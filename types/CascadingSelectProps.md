# CascadingSelectProps


A two-level cascading select.
Selecting a value in the primary dropdown loads options for the secondary dropdown.
The final value is a combination of both selections joined by `separator` (default `:`)
e.g. primary = "System", secondary = "Admin"  →  value = "System:Admin"


## Definition

```tsx
export interface CascadingSelectProps extends InputStateProps {
    /** Options for the first (primary) dropdown */
    primaryOptions: any[];
    /** Field name to display in the primary dropdown. Default: 'label' */
    primaryLabelField?: string;
    /** Field name to use as value in the primary dropdown. Default: 'value' */
    primaryValueField?: string;
    primaryPlaceholder?: string;

    /**
     * Called with the selected primary value; must return the options for the secondary dropdown.
     * Called every time the primary selection changes.
     */
    getSecondaryOptions: (primaryValue: string) => Promise<any[]>;
    /** Field name to display in the secondary dropdown. Default: 'label' */
    secondaryLabelField?: string;
    /** Field name to use as value in the secondary dropdown. Default: 'value' */
    secondaryValueField?: string;
    secondaryPlaceholder?: string;

    /** Current combined value e.g. "System:Admin". Pass null/undefined to show empty state. */
    selected?: string | null;
    /**
     * Called when both a primary and secondary value are selected.
     * `combined` is null when either side is not yet selected.
     */
    onChange: (combined: string | null, primary: string, secondary: string) => void;

    /** String used to join primary + secondary into the combined value. Default: ':' */
    separator?: string;

    className?: string;
    /** Stretch both dropdowns to 100% of the container */
    fullWidth?: boolean;
    /** Render as a single unified input with one border and a center divider */
    unified?: boolean;
}
```

## Usage

```tsx
import { CascadingSelectProps } from 'uxp/components';
```

## Related Types

- [InputStateProps](../types/InputStateProps.md)

