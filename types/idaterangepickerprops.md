# IDateRangePickerProps




## Definition

```tsx
interface IDateRangePickerProps extends InputSizeProps, InputStateProps {
    title?: string,
    /**
     * start date of the range. Either a Date object or an ISO8601 string representation of a date
     */
    startDate: string | Date,
    /**
     * end date of the range. Either a Date object or an ISO8601 string representation of a date
     */
    endDate: string | Date,

    /**
     * Option to pass selected preset
     */
    preset?: string
    /**
     * Callback that gets executed whenever a date range is selected/changed in the date picker
     */
    onChange: (newStartDate: string | Date, newEndDate: string | Date, preset?: string) => void,
    /**
     * Called when the calendar popup is closed
     */
    closeOnSelect?: boolean,
    /**
     * Set to true to prevent a user from typing in a date
     */
    disableInput?: boolean,
    /**
    * Additional options to control behavior
    */
    options?: IDatePickerOptions,
    /**
     * this will hide the labels in the placeholder (calendar icon and text)
     */
    hideLabels?: boolean
    /**
     * hide the input box
     */
    hideInput?: boolean,

    /**
     * show the full month name in the month selector dropdown
     * default is true
     *
     * if value is false it will show the short name "Jan" ,"Feb" and ect
     */
    showFullMonthName?: boolean

    /**
     * this will set the max width and show a compact picker
     */
    compact?: boolean

    renderAsPill?: {
        minWidth?: number,
        maxWidth?: number
    },

    presets?: {
        enable: boolean
        customPresets?: DateRangePreset[],
        renderPreset?: (preset: DateRangePreset, index: number, onSelectPreset: (preset: string) => void) => React.ReactNode,
        parseRelativeDatesOnSelect?: boolean // if this is set to true, relative dates will be parsed to dates
    }

    /**
     * Additional class name for the dropdown container
     */
    dropdownClassname?: string

    /**
     * Maximum width for the dropdown content
     */
    dropdownMaxWidth?: number | string
}
```

## Usage

```tsx
import { IDateRangePickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)
- [DateRangePreset](../types/DateRangePreset.md)
- [RelativeDate](../types/RelativeDate.md)

