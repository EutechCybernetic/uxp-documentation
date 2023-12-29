# CalendarComponent




Calendar component so display range of dates


## Installation



```tsx
import {CalendarComponent} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|dates|Date[]|array of dates |
|onSelectDate|(date: Date) => void|callback to trigger on click date ill return the clicked date |
|disableWeekEnds|boolean|disable weekends |
|disableDates|Array<Date>|list of dates to disable |
|minDate|Date|min date |
|maxDate|Date|max date |
|className|string|class name to use custom styles |
### dates



---



array of dates


|type|
|-|
|Date[]|
### onSelectDate



---



callback to trigger on click date
ill return the clicked date


|type|
|-|
|(date: Date) => void|
### disableWeekEnds



---



disable weekends


|type|
|-|
|boolean|
### disableDates



---



list of dates to disable


|type|
|-|
|Array<Date>|
### minDate



---



min date


|type|
|-|
|Date|
### maxDate



---



max date


|type|
|-|
|Date|
### className



---



class name to use custom styles


|type|
|-|
|string|
