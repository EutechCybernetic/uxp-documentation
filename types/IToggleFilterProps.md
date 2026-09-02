# IToggleFilterProps

## Definition

```tsx
interface IToggleFilterProps extends InputSizeProps, InputStateProps {
    /**
     * The list of possible options to choose from
     */
    options: IToggleOption[],

    /**
     * The current value (selected item)
     */
    value: string,

    /**
     * Called whenever an option is selected
     */
    onChange: (newValue: string) => void,

    /**
     * Any additional css classes to include
     */
    className?: string,

    /**
     * Segment metrics. Matches the equivalent `Button` size so a toggle and a
     * button of the same size line up.
     * @default 'medium'
     */
    size?: 'small' | 'medium' | 'large',

    /**
     * This will render the dropdown if the width is less than the min width
     */
    renderAsDropdown?: {
        minWidth: number,
        renderAsPill?: {
            minWidth?: number,
            maxWidth?: number
        }
    }

}
```

## Usage

```tsx
import { IToggleFilterProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IToggleOption](../types/IToggleOption.md)

