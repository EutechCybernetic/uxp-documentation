# IDatePickerProps









```tsx
interface IDatePickerProps {
    /**
     * The title
     */
    title: string,

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

}
```

## Usage



```tsx
import {IDatePickerProps} from 'uxp/components';
```

