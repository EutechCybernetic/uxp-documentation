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
     datetime={date}
     onChange={(date) => { setDate(date); }}
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|-|
|datetime|string \| Date|Yes|-|-|
|onChange|(date: Date) => void|Yes|-|-|
|disableInput|boolean|No|-|-|
|options|[IDatePickerOptions](../types/IDatePickerOptions.md)|No|-|-|
|hideLabels|boolean|No|-|-|
|hideDateInput|boolean|No|-|-|
|showFullMonthName|boolean|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|

## Related Types

- [IDateTimePickerProps](../types/IDateTimePickerProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)
- [SpacingMode](../types/SpacingMode.md)

