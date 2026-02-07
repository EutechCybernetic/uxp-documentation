# CalendarComponent


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
|dates|Date[]|Yes|-|-|
|onSelectDate|(date: Date) => void|Yes|-|-|
|disableWeekEnds|boolean|No|-|-|
|disableDates|Array<Date>|No|-|-|
|minDate|Date|No|-|-|
|maxDate|Date|No|-|-|
|className|string|No|-|-|

## Related Types

- [ICalendarComponentProps](../types/ICalendarComponentProps.md)

