# IColorPickerProps





## Definition

```tsx
interface IColorPickerProps extends InputSizeProps, InputStateProps {
    /**
     *  default color
    */
    color: string,
    /**
     * callback on select a color
     */
    onChange: (color: string) => void,
    /**
     * class name for additional styles
     */
    className?: string,
    /**
     * change display format
     */
    displayFormat?: IColorTypes
    /**
     * change return format
     */
    returnFormat?: IColorTypes

    /**
     * Text to show when no color is selected
     */
    placeholder?: string

    /**
     * Additional class name for the dropdown container
     */
    dropdownClassname?: string

    /**
     * Maximum width for the dropdown content
     */
    dropdownMaxWidth?: number | string

    /**
     * Minimum width for the dropdown content
     */
    dropdownMinWidth?: number | string

    /**
     * hide the color dot icon
     */
    hideLabels?: boolean

    /**
     * When provided, a clear (×) button is shown whenever a color is selected.
     * Clicking it calls this function — the parent is responsible for clearing the value.
     */
    onClear?: () => void
}
```

## Usage

```tsx
import { IColorPickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IColorTypes](../types/IColorTypes.md)

