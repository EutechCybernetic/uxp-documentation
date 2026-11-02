# IToggleOption





## Definition

```tsx
interface IToggleOption {
    /**
     * The text shown to the user for this option
     */
    label: string,

    /**
     * The actual value stored when this option is selected
     */
    value: string

    /**
     * Icon shown before the text, e.g. 'fal list'
     */
    icon?: string

    /**
     * Show only the icon; the text becomes the tooltip and the screen-reader name
     */
    iconOnly?: boolean
}
```

## Usage

```tsx
import { IToggleOption } from 'uxp/components';
```

