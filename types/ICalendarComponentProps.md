# ICalendarComponentProps




## Definition

```tsx
interface ICalendarComponentProps {
    /**
     * array of dates
     * @example [new Date('2026-09-10'), new Date('2026-09-18')]
     */
    dates: Date[]
    /**
     * callback to trigger on click date
     * ill return the clicked date
     * @example Log
     * ```tsx
     * onSelectDate={(date) => console.log('date', date)}
     * ```
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
import { ICalendarComponentProps } from 'uxp/components';
```

