# Checkbox






A checkbox component. This can render a true/value value in multiple ways. Set the type property to determine how it looks visually.
types : default, bordered, change-icon, switch-line, switch-box



## Installation



```tsx
import {Checkbox} from 'uxp/components';
```

## Examples



```tsx
<Checkbox
     checked={checked}
     onChange={(isChecked) => setChecked(isChecked)}
     label='Are you sure'
 />
```



```tsx
<Checkbox
     checked={checked}
     onChange={(isChecked) => setChecked(isChecked)}
     label='Are you sure'
     type="switch-box"
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|onChange|(checked: boolean) => void|Called when the checkbox is checked or unchecked by clicking on it |
|checked|boolean|Get or set the current state of the checkbox |
|label|string|Any additional text to show next to the checkbox |
|isValid|boolean|If set to 'false' the checkbox will show in an 'invalid' state - neither true nor false |
|inputAttr|{ [key: string]: string \| boolean }|Any additional html attributes to pass to the underlying input field |
|type|[ICheckboxType](types/ICheckboxType)|Determines how the checkbox looks, visually |
|className|string|additional styles |
### onChange



---



Called when the checkbox is checked or unchecked by clicking on it


|type|
|-|
|(checked: boolean) => void|
### checked



---



Get or set the current state of the checkbox


|type|
|-|
|boolean|
### label



---



Any additional text to show next to the checkbox


|type|
|-|
|string|
### isValid



---



If set to 'false' the checkbox will show in an 'invalid' state - neither true nor false


|type|
|-|
|boolean|
### inputAttr



---



Any additional html attributes to pass to the underlying input field


|type|
|-|
|{ [key: string]: string \| boolean }|
### type



---



Determines how the checkbox looks, visually


|type|
|-|
|[ICheckboxType](types/ICheckboxType)|
### className



---



additional styles


|type|
|-|
|string|
