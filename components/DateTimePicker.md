# DateTimePicker

This component is used to select a datetime.

## Installation

```tsx
import {DateTimePicker} from 'uxp/components';
```

## Examples

```tsx
<DateTimePicker
     datetime={date}
     onChange={(date) => { setDate(date); }}
 />
```

## Properties

| Name              | Type                                                                  | Description                                                                                                                                |
| ----------------- | --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| title             | string                                                                |                                                                                                                                            |
| datetime          | string \| Date                                                        | The currently selected datetime. Either a Date object or an ISO8601 string representation of a date                                        |
| onChange          | (date: Date) => void                                                  | Callback that gets executed whenever a datetime is selected/changed in the datetime picker                                                 |
| disableInput      | boolean                                                               | Set to true to prevent a user from typing in a datetime                                                                                    |
| options           | [idatetimepickerprops.md](../types/idatetimepickerprops.md "mention") | Additional options to control behavior                                                                                                     |
| hideLabels        | boolean                                                               | this will hide the labels in the placeholder (icons and text)                                                                              |
| hideDateInput     | boolean                                                               | hide the input box                                                                                                                         |
| showFullMonthName | boolean                                                               | show the full month name in the month selector dropdown default is true if value is false it will show the short name "Jan" ,"Feb" and ect |

### title

***

| type   |
| ------ |
| string |

### datetime

***

The currently selected datetime. Either a Date object or an ISO8601 string representation of a date

| type           |
| -------------- |
| string \| Date |

### onChange

***

Callback that gets executed whenever a datetime is selected/changed in the datetime picker

| type                 |
| -------------------- |
| (date: Date) => void |

### disableInput

***

Set to true to prevent a user from typing in a datetime

| type    |
| ------- |
| boolean |

### options

***

Additional options to control behavior

| type                                              |
| ------------------------------------------------- |
| [IDatePickerOptions](types/IDatePickerOptions.md) |

### hideLabels

***

this will hide the labels in the placeholder (icons and text)

| type    |
| ------- |
| boolean |

### hideDateInput

***

hide the input box

| type    |
| ------- |
| boolean |

### showFullMonthName

***

show the full month name in the month selector dropdown default is true

if value is false it will show the short name "Jan" ,"Feb" and ect

| type    |
| ------- |
| boolean |
