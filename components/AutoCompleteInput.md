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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-selection-autocompleteinput--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="AutoCompleteInput live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"Sin"|
|onChange|(val: string) => void|Yes|-|-|
|options|string[]|No|-|['Singapore', 'Sydney', 'Shanghai', 'Seoul', 'San Francisco']|
|autoFill|() => JSX.Element|No|-|function renderAutoFill() { return ( <div> {results.map((r, i) => ( <div key={i…|
|onClear|() => void|No|-|-|
|className|string|No|-|-|
|placeholder|string|No|-|-|
|tabIndex|number|No|-|-|
|addNewValues|[IAddNewValues](../types/IAddNewValues.md)|No|-|// Scenario A — create from typed text on no-match <AutoCompleteInput value={va…|

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

