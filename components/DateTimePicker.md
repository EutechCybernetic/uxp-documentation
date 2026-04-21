# DateTimePicker




This component is used to select a datetime.



## Installation

```tsx
import { DateTimePicker } from 'uxp/components';
```

## Signature

```tsx
const DateTimePicker: React.FunctionComponent<IDateTimePickerProps>
```

## Examples

```tsx
<DateTimePicker
     title="Select Date & Time"
     datetime={date}
     onChange={(date) => { setDate(date); }}
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|datetime|string \| Date|Yes|-|-|
|onChange|(date: Date) => void|Yes|-|-|
|disableInput|boolean|No|-|-|
|options|[IDatePickerOptions](../types/IDatePickerOptions.md)|No|-|-|
|hideLabels|boolean|No|-|-|
|hideDateInput|boolean|No|-|-|
|showFullMonthName|boolean|No|-|-|
|dropdownClassname|string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|placeholder|string|No|-|-|
|closeOnSelect|boolean|No|-|-|

## Related Types

- [IDateTimePickerProps](../types/IDateTimePickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)

