# TimeRangePicker

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-datetimepicker-timerangepicker--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TimeRangePicker live demo"
></iframe>





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
|dropdownClassname|string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|onClear|() => void|No|-|-|

## Related Types

- [ITimeRangePickerProps](../types/ITimeRangePickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

