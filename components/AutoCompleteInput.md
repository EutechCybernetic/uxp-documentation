# AutoCompleteInput

A free-text input that shows a suggestion dropdown as the user types.
Unlike `Select`, the user can type any value — suggestions are optional helpers.



## Installation

```tsx
import { AutoCompleteInput } from 'uxp/components';
```

## Signature

```tsx
const AutoCompleteInput: React.ForwardRefExoticComponent<React.RefAttributes<any> & any>
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

