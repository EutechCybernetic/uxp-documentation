# RadioGroup


A group of radio buttons for picking exactly one of a few options. Each option can carry a line
of help text under its label.

Use it when there are two to five choices and the user should see them all at once.
For a longer list use `Select`.



## Installation

```tsx
import { RadioGroup } from 'uxp/components';
```

## Signature

```tsx
const RadioGroup: React.FunctionComponent<IRadioGroupProps>
```

## Examples

```tsx
<RadioGroup
    options={[
        { label: 'One file', value: 'one', description: 'All dashboards in a single file.' },
        { label: 'A file per dashboard', value: 'each', description: 'One download for each dashboard.' },
    ]}
    selected={files}
    onChange={(value) => setFiles(String(value))}
/>
```

```tsx
<RadioGroup
    direction="horizontal"
    options={[{ label: 'Day', value: 'day' }, { label: 'Week', value: 'week' }, { label: 'Month', value: 'month' }]}
    selected={period}
    onChange={(value) => setPeriod(String(value))}
/>
```

## Live preview

[Open RadioGroup in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-selection-radiogroup--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|options|[IRadioOption[]](../types/IRadioOption.md)|Yes|-|-|
|selected|string \| number \| null|Yes|-|"one"|
|onChange|(value: string \| number) => void|Yes|-|-|
|direction|"vertical" \| "horizontal"|No|"vertical"|-|
|name|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [IRadioGroupProps](../types/IRadioGroupProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IRadioOption](../types/IRadioOption.md)

