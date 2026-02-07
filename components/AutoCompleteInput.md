# AutoCompleteInput

This component allows you to create a custom autocomplete component.



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
let [val, setVal] = useState('')
 let inputRef = useRef(null)

 let data = [
     {name: 'India'},
     {name: 'Japan'},
     {name: 'China'},
     {name: 'Singapore'},
     {name: 'Italy'},
 ]

 function renderAutoComplete() {

     let options = data.filter(d => d.name.includes(val))

     return <>
         {options.map((o, i) => {
             return <div onClick={() => {
                     // to replace the value
                     setVal(o.name);

                     // if you want to apped at the cursor
                     inputRef.current?.appendAtCursor(o.name)

                     // close picker when select an item
                     inputRef.current?.close()
                 }>
                         {o.name}
                 </div>
         })}
     </>
 }

 return <div>

     <AutoCompleteInput
         value={val}
         onChange={setVal}
         autoFill={<div >
             {renderAutoComplete()}
         </div>}
         ref={inputRef}
     />

 </div>
```

```tsx
Also you can pass a set of items instead of custom auto fill.
 Component will create a the auto fill

     <AutoCompleteInput
         value={val}
         onChange={setVal}
         options={['India', 'Japan', 'China', 'Singapore']}
         ref={inputRef}
     />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(val: string) => void|Yes|-|-|
|options|string[]|No|-|-|
|autoFill|() => JSX.Element|No|-|-|
|className|string|No|-|-|
|isValid|boolean|No|-|-|
|placeholder|string|No|-|-|
|optionClassName|string|No|-|* ```|
|tabIndex|number|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|open|() => void|this will open the picker |
|close|() => void|this will close the picker |
|focus|() => void|this will focus the input |
|getInputElement|() => React.MutableRefObject<HTMLInputElement>|This will return the input element |
|appendAtCursor|(value: string) => void|This will append the passed value at the cursor if a selection has made it will be replaced by the passed value |

## Related Types

- [IAutoCompleteInputProps](../types/IAutoCompleteInputProps.md)
- [IAutoCompleteInputInstanceProps](../types/IAutoCompleteInputInstanceProps.md)

