# AutoCompleteInput

A free-text input that shows a suggestion dropdown as the user types.
Unlike `Select`, the user can type any value — suggestions are optional helpers.



## Installation

```tsx
import { AutoCompleteInput } from 'uxp/components';
```

## Signature

```tsx
const AutoCompleteInput: React.ForwardRefExoticComponent<React.RefAttributes<IAutoCompleteInputInstanceProps> & IAutoCompleteInputProps>
```

## Examples

```tsx
tsx
// Static options — component filters automatically
<AutoCompleteInput
  value={val}
  onChange={setVal}
  options={['India', 'Japan', 'China', 'Singapore']}
/>
```

```tsx
tsx
// Custom dropdown content
const inputRef = React.useRef(null)

function renderAutoFill() {
  return (
    <div>
      {results.map((r, i) => (
        <div key={i} onClick={() => { onChange(r.name); inputRef.current?.close(); }}>
          {r.name}
        </div>
      ))}
    </div>
  )
}

<AutoCompleteInput value={val} onChange={setVal} autoFill={renderAutoFill} ref={inputRef} />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(val: string) => void|Yes|-|-|
|options|string[]|No|-|-|
|autoFill|() => JSX.Element|No|-|* ```tsx|
|onClear|() => void|No|-|-|
|className|string|No|-|-|
|placeholder|string|No|-|-|
|tabIndex|number|No|-|-|
|addNewValues|[IAddNewValues](../types/IAddNewValues.md)|No|-|* ```tsx|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|open|() => void|Opens the suggestion dropdown |
|close|() => void|Closes the suggestion dropdown |
|focus|() => void|Focuses the text input |
|getInputElement|() => HTMLInputElement \| null|Returns the underlying `<input>` element |
|appendAtCursor|(value: string) => void|Appends `value` at the current cursor position. If there is an active selection it is replaced by `value`. |

## Related Types

- [IAutoCompleteInputProps](../types/IAutoCompleteInputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IAddNewValues](../types/IAddNewValues.md)
- [IAutoCompleteInputInstanceProps](../types/IAutoCompleteInputInstanceProps.md)

