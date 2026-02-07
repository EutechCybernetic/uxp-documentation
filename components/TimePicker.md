# TimePicker




This component is used to select a time.



## Installation

```tsx
import { TimePicker } from 'uxp/components';
```

## Signature

```tsx
const TimePicker: React.FunctionComponent<ITimePickerProps>
```

## Examples

```tsx
<TimePicker
     title="Time"
     time={date}
     onChange={(date) => setDate(date)}
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|-|
|time|string \| Date|Yes|-|-|
|onChange|(date: Date) => void|Yes|-|-|
|disableInput|boolean|No|-|-|
|hideLabels|boolean|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|

## Related Types

- [ITimePickerProps](../types/ITimePickerProps.md)
- [SpacingMode](../types/SpacingMode.md)

