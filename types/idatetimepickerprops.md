# IDateTimePickerProps








```tsx
interface IDateTimePickerProps {
    title: string,
    /**
    * The currently selected datetime. Either a Date object or an ISO8601 string representation of a date
    */
    datetime: string | Date,
    /**
     * Callback that gets executed whenever a datetime is selected/changed in the datetime picker
     */
    onChange: (date: Date) => void,
    /**
    * Set to true to prevent a user from typing in a datetime
    */
    disableInput?: boolean

    /**
    * Additional options to control behavior
    */
    options?: IDatePickerOptions,

    /**
     * this will hide the labels in the placeholder (icons and text)
     */
    hideLabels?: boolean
    /**
     * hide the input box
     */
    hideDateInput?: boolean,

    /**
     * show the full month name in the month selector dropdown
     * default is true 
     * 
     * if value is false it will show the short name "Jan" ,"Feb" and ect
     */
    showFullMonthName?: boolean
}
```

## Usage



```tsx
import {IDateTimePickerProps} from 'uxp/components';
```

