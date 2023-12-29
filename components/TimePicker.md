# TimePicker






This component is used to select a time.



## Installation



```tsx
import {TimePicker} from 'uxp/components';
```

## Examples



```tsx
<TimePicker
     title="Time"
     time={date}
     onChange={(date) => setDate(date)}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string|The title |
|time|string \| Date|The currently selected time. Either a Date object or an time string (Ex: 01:10:00 pm) |
|onChange|(date: Date) => void|Callback that gets executed whenever a time is selected/changed in the time picker |
|disableInput|boolean|Set to true to prevent a user from typing in a date |
### title



---



The title


|type|
|-|
|string|
### time



---



The currently selected time. Either a Date object or an time string (Ex: 01:10:00 pm)


|type|
|-|
|string \| Date|
### onChange



---



Callback that gets executed whenever a time is selected/changed in the time picker


|type|
|-|
|(date: Date) => void|
### disableInput



---



Set to true to prevent a user from typing in a date


|type|
|-|
|boolean|
