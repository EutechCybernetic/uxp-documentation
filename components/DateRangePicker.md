# DateRangePicker




This component is used to select a date range.



## Installation

```tsx
import { DateRangePicker } from 'uxp/components';
```

## Signature

```tsx
const DateRangePicker: React.FunctionComponent<IDateRangePickerProps>
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

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|startDate|string \| Date|Yes|-|-|
|endDate|string \| Date|Yes|-|-|
|preset|string|No|-|-|
|onChange|(newStartDate: string \| Date, newEndDate: string \| Date, preset?: string) => void|Yes|-|-|
|closeOnSelect|boolean|No|-|-|
|disableInput|boolean|No|-|-|
|options|[IDatePickerOptions](../types/IDatePickerOptions.md)|No|-|-|
|hideLabels|boolean|No|-|-|
|hideInput|boolean|No|-|-|
|showFullMonthName|boolean|No|-|-|
|compact|boolean|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|
|renderAsPill|{ minWidth?: number, maxWidth?: number }|No|-|-|
|presets|{ enable: boolean customPresets?: DateRangePreset[], renderPreset?: (preset: DateRangePreset, index: number, onSelectPreset: (preset: string) => void) => React.ReactNode, parseRelativeDatesOnSelect?: boolean // if this is set to true, relative dates will be parsed to dates }|No|-|-|

## Related Types

- [IDateRangePickerProps](../types/IDateRangePickerProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)
- [SpacingMode](../types/SpacingMode.md)
- [DateRangePreset](../types/DateRangePreset.md)
- [RelativeDate](../types/RelativeDate.md)

