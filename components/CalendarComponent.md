# CalendarComponent

> **Advanced.** Available for building custom components. Most apps do not need it.


Calendar component so display range of dates



## Installation

```tsx
import { CalendarComponent } from 'uxp/components';
```

## Signature

```tsx
const CalendarComponent: React.FunctionComponent<ICalendarComponentProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|dates|Date[]|Yes|-|[new Date('2026-09-10'), new Date('2026-09-18')]|
|onSelectDate|(date: Date) => void|Yes|-|Log onSelectDate={(date) => console.log('date', date)}|
|disableWeekEnds|boolean|No|-|-|
|disableDates|Array<Date>|No|-|-|
|minDate|Date|No|-|-|
|maxDate|Date|No|-|-|
|className|string|No|-|-|

## Related Types

- [ICalendarComponentProps](../types/ICalendarComponentProps.md)

