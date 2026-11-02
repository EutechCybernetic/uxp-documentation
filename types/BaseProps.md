# BaseProps


Base props for action columns configuration


## Definition

```tsx
export interface BaseProps {
    /** Enable this action column */
    enable: boolean;
    /** Label to display in column header */
    label?: string;
    /** Width of the column in pixels at the 13px base font (1440 wide); scaled with the base font */
    width?: number;
}
```

## Usage

```tsx
import { BaseProps } from 'uxp/components';
```

