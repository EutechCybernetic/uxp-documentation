# ITimeRangePickerProps

## Definition

```tsx
interface ITimeRangePickerProps extends InputSizeProps, InputStateProps {
    title: string
    /**
     * Start time . Either a Date object or an time string (Ex: 01:10:00 pm)
     */
    startTime: string | Date,
    /**
    * End time . Either a Date object or an time string (Ex: 01:10:00 pm)
    */
    endTime: string | Date,
    /**
    * Callback that gets executed whenever a time range is selected/changed in the time picker
    */
    onChange: (start: Date, end: Date) => void,
    /**
   * Set to true to prevent a user from typing in a time
   */
    disableInput?: boolean,

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
import { ITimeRangePickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

