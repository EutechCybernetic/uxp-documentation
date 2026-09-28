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

## Live preview

[Open TimePicker in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-date-and-time-timepicker--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|time|string \| Date|Yes|-|"09:30"|
|onChange|(date: Date) => void|Yes|-|-|
|disableInput|boolean|No|-|-|
|hideLabels|boolean|No|-|-|
|dropdownClassname|string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|onClear|() => void|No|-|-|

## Related Types

- [ITimePickerProps](../types/ITimePickerProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

