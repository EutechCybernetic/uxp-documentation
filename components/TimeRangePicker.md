# TimeRangePicker




This component is used to select a time range.



## Installation

```tsx
import { TimeRangePicker } from 'uxp/components';
```

## Signature

```tsx
const TimeRangePicker: React.FunctionComponent<ITimeRangePickerProps>
```

## Examples

```tsx
<TimeRangePicker
     startTime={startDate}
     endTime={endDate}
     onChange={(s, e) => { setStartDate(s); setEndDate(e) }}
 />
```

## Live preview

[Open TimeRangePicker in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-date-and-time-timerangepicker--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|"Working hours"|
|startTime|string \| Date|Yes|-|"09:00"|
|endTime|string \| Date|Yes|-|"18:00"|
|onChange|(start: Date, end: Date) => void|Yes|-|-|
|disableInput|boolean|No|-|-|
|dropdownClassname|string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|onClear|() => void|No|-|-|

## Related Types

- [ITimeRangePickerProps](../types/ITimeRangePickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

