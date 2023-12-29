# ICalendarComponentProps








```tsx
interface ICalendarComponentProps {
    /**
     * array of dates
     */
    dates: Date[]
    /**
     * callback to trigger on click date
     * ill return the clicked date
     */
    onSelectDate: (date: Date) => void
    /**
     * disable weekends
     */
    disableWeekEnds?: boolean,
    /**
     * list of dates to disable 
     */
    disableDates?: Array<Date>
    /**
     * min date 
     */
    minDate?: Date,
    /**
     * max date
     */
    maxDate?: Date,
    /**
     * class name to use custom styles
     */
    className?: string
}
```

## Usage



```tsx
import {ICalendarComponentProps} from 'uxp/components';
```

