# TimeRangeSliderPicker


TimeRangeSliderPicker - A dual-handle slider for selecting time ranges



## Installation

```tsx
import { TimeRangeSliderPicker } from 'uxp/components';
```

## Signature

```tsx
const TimeRangeSliderPicker: React.FunctionComponent<TimeRangeSliderPickerProps>
```

## Examples

```tsx
tsx
<TimeRangeSliderPicker
    title="Working Hours"
    startTime="09:00"
    endTime="17:00"
    onChange={(start, end) => {
        console.log('Start:', start, 'End:', end);
    }}
    step={15}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|startTime|string \| Date|Yes|-|-|
|endTime|string \| Date|Yes|-|-|
|onChange|(start: Date, end: Date) => void|Yes|-|-|
|step|number|No|-|-|
|disabled|boolean|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|

## Related Types

- [TimeRangeSliderPickerProps](../types/TimeRangeSliderPickerProps.md)
- [SpacingMode](../types/SpacingMode.md)

