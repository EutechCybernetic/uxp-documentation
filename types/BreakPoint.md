# BreakPoint


Breakpoint configuration


## Definition

```tsx
export interface BreakPoint {
    /**
     * Minimum width in pixels for this breakpoint
     */
    width: number;
    /**
     * Number of grid columns for this breakpoint
     */
    columns: number;
    /**
     * Display label for the breakpoint
     */
    label?: string;
    /**
     * Icon identifier for the breakpoint
     */
    icon?: string;
}
```

## Usage

```tsx
import { BreakPoint } from 'uxp/components';
```

