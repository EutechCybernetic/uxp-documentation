# IDatePickerOptions




Options that can be passed to a date picker field




```tsx
interface IDatePickerOptions {
    /**
     * The minimum selectable date. Either a Date object an an ISO8601 date string
     */
    minDate?: string | Date,

    /**
     * The maximum selectable date. Either a Date object an an ISO8601 date string
     */
    maxDate?: string | Date,

    /**
     * If set to `true`, you cannot select a weekend date
     */
    disableWeekEnds?: boolean,

    /**
     * An array of specific dates that the user cannot select
     */
    disableDates?: Array<Date | String>
}
```

## Usage



```tsx
import {IDatePickerOptions} from 'uxp/components';
```

