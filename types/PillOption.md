# PillOption


Represents a selectable option that can become a pill


## Definition

```tsx
export interface PillOption {
    /** Display label for the option */
    label: string;
    /** The actual value used in expressions */
    value: string;
    /** Optional formatters applied to the value */
    formatters?: string[]
}
```

## Usage

```tsx
import { PillOption } from 'uxp/components';
```

