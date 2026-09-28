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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-date-and-time-timerangepicker--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TimeRangePicker live preview"
></iframe>

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

