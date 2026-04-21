# DatePicker




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

## Related Types

- [IDatePickerProps](../types/IDatePickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)

