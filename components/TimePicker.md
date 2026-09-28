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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-date-and-time-timepicker--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TimePicker live preview"
></iframe>

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

