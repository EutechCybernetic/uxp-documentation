# IToggleFilterProps

## Definition

```tsx
interface IToggleFilterProps {
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
     * background color of the fill/tab
     * default is white 
     */
    backgroundColor?: string,
    /**
     * text color of the tab/fill 
     * default is #424242
     */
    textColor?: string,
    /**
     * background color for the selected tab
     * default is white with box shadow 
     */
    selectedBackgroundColor?: string,
    /**
     * text color for the selected tab/fill 
     * default is #424242
     */
    selectedTextColor?: string,
    /**
     * this will disable the box shadow from the selected tab/fill
     */
    disableShadow?: boolean,

    /**
     * Spacing mode
     */
    spacingMode?: SpacingMode

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

- [IToggleOption](../types/IToggleOption.md)
- [SpacingMode](../types/SpacingMode.md)

