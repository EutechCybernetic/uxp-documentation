# IRadioOption

One choice in a radio group


## Definition

```tsx
interface IRadioOption {
    /**
     * Text shown next to the radio button
     * @example "One file"
     */
    label: string | React.ReactNode;

    /**
     * Value passed to onChange when this option is picked
     * @example "one"
     */
    value: string | number;

    /**
     * A line of help text shown under the label. Use it to say what picking this option does
     * @example "All dashboards in a single file."
     */
    description?: string | React.ReactNode;

    /**
     * Set to true to prevent this option from being picked
     */
    disabled?: boolean;
}
```

## Usage

```tsx
import { IRadioOption } from 'uxp/components';
```

