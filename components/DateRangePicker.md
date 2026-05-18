# DateRangePicker

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-datetimepicker-daterangepicker--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DateRangePicker live demo"
></iframe>





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
|renderAsPill|{ minWidth?: number, maxWidth?: number }|No|-|-|
|presets|{ enable: boolean customPresets?: DateRangePreset[], renderPreset?: (preset: DateRangePreset, index: number, onSelectPreset: (preset: string) => void) => React.ReactNode, parseRelativeDatesOnSelect?: boolean // if this is set to true, relative dates will be parsed to dates }|No|-|-|
|dropdownClassname|string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|onClear|() => void|No|-|-|

## Related Types

- [IDateRangePickerProps](../types/IDateRangePickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IDatePickerOptions](../types/IDatePickerOptions.md)
- [ISpecialDate](../types/ISpecialDate.md)
- [DateRangePreset](../types/DateRangePreset.md)
- [RelativeDate](../types/RelativeDate.md)

