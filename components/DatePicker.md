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
|hideLabels|boolean|this will hide the labels in the placeholder (calendar icon) |
|hideInput|boolean|hide the input box |
|showFullMonthName|boolean|show the full month name in the month selector dropdown default is true if value is false it will show the short name "Jan" ,"Feb" and ect |
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
### hideLabels



---



this will hide the labels in the placeholder (calendar icon)


|type|
|-|
|boolean|
### hideInput



---



hide the input box


|type|
|-|
|boolean|
### showFullMonthName



---



show the full month name in the month selector dropdown
default is true

if value is false it will show the short name "Jan" ,"Feb" and ect


|type|
|-|
|boolean|
