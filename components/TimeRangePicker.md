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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|-|
|startTime|string \| Date|Yes|-|-|
|endTime|string \| Date|Yes|-|-|
|onChange|(start: Date, end: Date) => void|Yes|-|-|
|disableInput|boolean|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|

## Related Types

- [ITimeRangePickerProps](../types/ITimeRangePickerProps.md)
- [SpacingMode](../types/SpacingMode.md)

