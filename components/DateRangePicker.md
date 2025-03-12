# DateRangePicker






This component is used to select a date range.



## Installation



```tsx
import {DateRangePicker} from 'uxp/components';
```

## Examples



```tsx
<DateRangePicker
     startDate={startDate}
     endDate={endDate}
     closeOnSelect
     onChange={(newStart, newEnd) => { setStartDate(newStart); setEndDate(newEnd) }}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string||
|startDate|string \| Date|start date of the range. Either a Date object or an ISO8601 string representation of a date |
|endDate|string \| Date|end date of the range. Either a Date object or an ISO8601 string representation of a date |
|preset|string|Option to pass selected preset |
|onChange|(newStartDate: string \| Date, newEndDate: string \| Date, preset?: string) => void|Callback that gets executed whenever a date range is selected/changed in the date picker |
|closeOnSelect|boolean|Called when the calendar popup is closed |
|disableInput|boolean|Set to true to prevent a user from typing in a date |
|options|[IDatePickerOptions](../types/IDatePickerOptions.md)|Additional options to control behavior |
|hideLabels|boolean|this will hide the labels in the placeholder (calendar icon and text) |
|hideInput|boolean|hide the input box |
|showFullMonthName|boolean|show the full month name in the month selector dropdown default is true if value is false it will show the short name "Jan" ,"Feb" and ect |
|compact|boolean|this will set the max width and show a compact picker |
|spacingMode|SpacingMode||
|renderAsPill|{ minWidth?: number, maxWidth?: number }||
|presets|{ enable: boolean customPresets?: DateRangePreset[], renderPreset?: (preset: DateRangePreset, index: number, onSelectPreset: (preset: string) => void) => React.ReactNode, parseRelativeDatesOnSelect?: boolean // if this is set to true, relative dates will be parsed to dates }||


### title



---





|type|
|-|
|string|


### startDate



---



start date of the range. Either a Date object or an ISO8601 string representation of a date


|type|
|-|
|string \| Date|


### endDate



---



end date of the range. Either a Date object or an ISO8601 string representation of a date


|type|
|-|
|string \| Date|


### preset



---



Option to pass selected preset


|type|
|-|
|string|


### onChange



---



Callback that gets executed whenever a date range is selected/changed in the date picker


|type|
|-|
|(newStartDate: string \| Date, newEndDate: string \| Date, preset?: string) => void|


### closeOnSelect



---



Called when the calendar popup is closed


|type|
|-|
|boolean|


### disableInput



---



Set to true to prevent a user from typing in a date


|type|
|-|
|boolean|


### options



---



Additional options to control behavior


|type|
|-|
|[IDatePickerOptions](../types/IDatePickerOptions.md)|


### hideLabels



---



this will hide the labels in the placeholder (calendar icon and text)


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


### compact



---



this will set the max width and show a compact picker


|type|
|-|
|boolean|


### spacingMode



---





|type|
|-|
|SpacingMode|


### renderAsPill



---





|type|
|-|
|{ minWidth?: number, maxWidth?: number }|


### presets



---





|type|
|-|
|{ enable: boolean customPresets?: DateRangePreset[], renderPreset?: (preset: DateRangePreset, index: number, onSelectPreset: (preset: string) => void) => React.ReactNode, parseRelativeDatesOnSelect?: boolean // if this is set to true, relative dates will be parsed to dates }|


