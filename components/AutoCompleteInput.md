# AutoCompleteInput



This component allows you to create a custom autocomplete component.



## Installation



```tsx
import {AutoCompleteInput} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|value|string|value for the |
|onChange|(val: string) => void|callback on value change |
|options|string[]|options to auto generate the dropdown list |
|autoFill|() => JSX.Element|render auto complete dropdown |
|className|string|additional class name |
|isValid|boolean|indicate the if the value is valid or not |
|placeholder|string|placeholder |
|optionClassName|string|this will be used to bind the keybaord inputs. once you add the class you will be able to navigate trhough the options using arrow keys (up and down) you need to add the same classname to the options default is 'uxp-select-option-container' you can use the default class in the drop down option and you will get the default styles <div classname="uxp-select-option-container" ...> a</div> if you pass a custom class name you need write some styles to indicate the selected items in styles (.scss file) -------------------- .<custom-class-name> { &.highlighted { background-color: #52c4c94a; color: #424242; } } |
|tabIndex|number|tab index. default is 0 |
### value



---



value for the


|type|
|-|
|string|
### onChange



---



callback on value change


|type|
|-|
|(val: string) => void|
### options



---



options to auto generate the dropdown list


|type|
|-|
|string[]|
### autoFill



---



render auto complete dropdown


|type|
|-|
|() => JSX.Element|
### className



---



additional class name


|type|
|-|
|string|
### isValid



---



indicate the if the value is valid or not


|type|
|-|
|boolean|
### placeholder



---



placeholder


|type|
|-|
|string|
### optionClassName



---



this will be used to bind the keybaord inputs.
once you add the class you will be able to navigate trhough the options using arrow keys (up and down)
you need to add the same classname to the options

default is 'uxp-select-option-container'
you can use the default class in the drop down option and you will get the default styles
<div classname="uxp-select-option-container" ...> a</div>

if you pass a custom class name you need write some styles to indicate the selected items

in styles (.scss file)
--------------------
.<custom-class-name> {
  &.highlighted {
         background-color: #52c4c94a;
         color: #424242;
 }
}



|type|
|-|
|string|


```tsx
function renderAutoFill() {
return <div>
     <div classname="custom-class-name" ...> a</div>
     <div classname="custom-class-name" ...> b</div>
     <div classname="custom-class-name" ...> c</div>
</div>
}
<AtutoCompleteInput
...
optionClassName={'custom-class-name'}
autoFill={renderAutoFill()}
/>
```

### tabIndex



---



tab index. default is 0


|type|
|-|
|number|
