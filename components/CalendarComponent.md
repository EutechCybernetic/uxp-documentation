# CalendarComponent

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-datetimepicker-calendarcomponent--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="CalendarComponent live demo"
></iframe>



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

