# InfoButtonProps




## Definition

```tsx
export interface InfoButtonProps {
    /**
     * The content to display inside the info popup.
     * - `string`: rendered as plain text
     * - `string[]`: rendered as a bulleted list
     * - `ReactNode`: rendered as-is
     */
    content: string | React.ReactNode | string[]

    /**
     * Position of the popup relative to the info button.
     * Defaults to `"top-right"`.
     */
    position?: InfoButtonPosition

    /**
     * Size of the info button trigger.
     * `small` removes the border/background and uses a smaller icon — suited for inline label use.
     * Defaults to `"default"`.
     */
    size?: 'default' | 'small'
}
```

## Usage

```tsx
import { InfoButtonProps } from 'uxp/components';
```

## Related Types

- [InfoButtonPosition](../types/InfoButtonPosition.md)
- [DropdownPosition](../types/DropdownPosition.md)

