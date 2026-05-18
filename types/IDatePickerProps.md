# IDatePickerProps





## Definition

```tsx
interface IDatePickerProps extends InputSizeProps, InputStateProps {
    /**
     * The title
     */
    title?: string,

    /**
     * The currently selected date. Either a Date object or an ISO8601 string representation of a date
     */
    date: string | Date,

    /**
     * Callback that gets executed whenever a date is selected/changed in the date picker
     */
    onChange: (date: Date) => void,

    /**
     * Called when the calendar popup is closed
     */
    closeOnSelect?: boolean,

    /**
     * Additional options to control behavior
     */
    options?: IDatePickerOptions,

    /**
     * Set to true to prevent a user from typing in a date
     */
    disableInput?: boolean,

    /**
     * this will hide the labels in the placeholder (calendar icon)
     */
    hideLabels?: boolean
    /**
     * hide the input box
     */
    hideInput?: boolean,

    /**
     * Text to show when no date is selected
     */
    placeholder?: string,

    /**
     * show the full month name in the month selector dropdown
     * default is true
     *
     * if value is false it will show the short name "Jan" ,"Feb" and ect
     */
    showFullMonthName?: boolean,

    /**
     * Additional class name for the dropdown container
     */
    dropdownClassname?: string

    /**
     * Maximum width for the dropdown content
     */
    dropdownMaxWidth?: number | string

    /**
     * When provided, a clear (×) button is shown whenever a date is selected.
     * Clicking it calls this function — the parent is responsible for clearing the value.
     */
    onClear?: () => void
}
```

## Usage

```tsx
import { IDatePickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)

