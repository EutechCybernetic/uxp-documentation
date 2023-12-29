# TimeRangePicker






This component is used to select a time range.



## Installation



```tsx
import {TimeRangePicker} from 'uxp/components';
```

## Examples



```tsx
<TimeRangePicker
     startTime={startDate}
     endTime={endDate}
     onChange={(s, e) => { setStartDate(s); setEndDate(e) }}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string||
|startTime|string \| Date|Start time . Either a Date object or an time string (Ex: 01:10:00 pm) |
|endTime|string \| Date|End time . Either a Date object or an time string (Ex: 01:10:00 pm) |
|onChange|(start: Date, end: Date) => void|Callback that gets executed whenever a time range is selected/changed in the time picker |
|disableInput|boolean|Set to true to prevent a user from typing in a time |
### title



---





|type|
|-|
|string|
### startTime



---



Start time . Either a Date object or an time string (Ex: 01:10:00 pm)


|type|
|-|
|string \| Date|
### endTime



---



End time . Either a Date object or an time string (Ex: 01:10:00 pm)


|type|
|-|
|string \| Date|
### onChange



---



Callback that gets executed whenever a time range is selected/changed in the time picker


|type|
|-|
|(start: Date, end: Date) => void|
### disableInput



---



Set to true to prevent a user from typing in a time


|type|
|-|
|boolean|
