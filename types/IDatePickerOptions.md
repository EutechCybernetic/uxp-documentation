# IDatePickerOptions

## Definition

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

    /**
     * A list of spacial dates. you can use this to highlight the dates and show a tooltip on hover over it
     */
    specialDates?: (string | Date | ISpecialDate)[],

    /**
     * Default background color for all spacial dates. This can be overridden for individual days if required.  
     */
    specialDateBackgroundColor?: string
    /**
     * Default text color for all spacial dates. This can be overridden for individual days if required.  
     */
    specialDateTextColor?: string
}
```

## Usage

```tsx
import { IDatePickerOptions } from 'uxp/components';
```

## Related Types

- [ISpecialDate](../types/ISpecialDate.md)

