# DatePicker

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-datetimepicker-datepicker--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DatePicker live demo"
></iframe>





This component is used to select a date.



## Installation

```tsx
import { DatePicker } from 'uxp/components';
```

## Signature

```tsx
const DatePicker: React.FunctionComponent<IDatePickerProps>
```

## Examples

```tsx
<DatePicker
   title="Date"
   date={date}
   onChange={(date) => setDate(date)}
/>
```

#### <DatePicker
    title="Date"
    date={date}
    onChange={(date) => setDate(date)}
    options={{
        disableWeekEnds: true
    }}
/>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|date|string \| Date|Yes|-|-|
|onChange|(date: Date) => void|Yes|-|-|
|closeOnSelect|boolean|No|-|-|
|options|[IDatePickerOptions](../types/IDatePickerOptions.md)|No|-|-|
|disableInput|boolean|No|-|-|
|hideLabels|boolean|No|-|-|
|hideInput|boolean|No|-|-|
|placeholder|string|No|-|-|
|showFullMonthName|boolean|No|-|-|
|dropdownClassname|string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|onClear|() => void|No|-|-|

## Related Types

- [IDatePickerProps](../types/IDatePickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)

