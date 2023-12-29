# DatePicker






This component is used to select a date.



## Installation



```tsx
import {DatePicker} from 'uxp/components';
```

## Examples



```tsx
<DatePicker
   title="Date"
   date={date}
   onChange={(date) => setDate(date)}
/>
```



```tsx
<DatePicker
    title="Date"
    date={date}
    onChange={(date) => setDate(date)}
    options={{
        disableWeekEnds: true
    }}
/>
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string|The title |
|date|string \| Date|The currently selected date. Either a Date object or an ISO8601 string representation of a date |
|onChange|(date: Date) => void|Callback that gets executed whenever a date is selected/changed in the date picker |
|closeOnSelect|boolean|Called when the calendar popup is closed |
|options|[IDatePickerOptions](types/IDatePickerOptions)|Additional options to control behavior |
|disableInput|boolean|Set to true to prevent a user from typing in a date |
### title



---



The title


|type|
|-|
|string|
### date



---



The currently selected date. Either a Date object or an ISO8601 string representation of a date


|type|
|-|
|string \| Date|
### onChange



---



Callback that gets executed whenever a date is selected/changed in the date picker


|type|
|-|
|(date: Date) => void|
### closeOnSelect



---



Called when the calendar popup is closed


|type|
|-|
|boolean|
### options



---



Additional options to control behavior


|type|
|-|
|[IDatePickerOptions](types/IDatePickerOptions)|
### disableInput



---



Set to true to prevent a user from typing in a date


|type|
|-|
|boolean|
