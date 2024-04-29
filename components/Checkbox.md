# Checkbox




Checkbox component



## Installation



```tsx
import {Checkbox} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|checked|boolean|Get or set the current state of the checkbox |
|onChange|(checked: boolean) => void|Called when the checkbox is checked or unchecked by clicking on it |
|label|string|Any additional text to show next to the checkbox |
|isValid|boolean|If set to 'false' the checkbox will show in an 'invalid' state - neither true nor false |
|inputAttr|{ [key: string]: string \| boolean }|Any additional html attributes to pass to the underlying input field |
|type|[ICheckboxType](types/ICheckboxType)|Determines how the checkbox looks, visually |
|className|string|additional styles |
|labelStyles|React.CSSProperties|additional styles to pass to the label |
|tabIndex|number|tab index. default is 0 |
|readonly|boolean|mark as readonly |
### checked



---



Get or set the current state of the checkbox


|type|
|-|
|boolean|
### onChange



---



Called when the checkbox is checked or unchecked by clicking on it


|type|
|-|
|(checked: boolean) => void|
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
### labelStyles



---



additional styles to pass to the label


|type|
|-|
|React.CSSProperties|
### tabIndex



---



tab index. default is 0


|type|
|-|
|number|
### readonly



---



mark as readonly


|type|
|-|
|boolean|
