# Input




A standard text box



## Installation



```tsx
import {Input} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|type|[IInputType](types/IInputType)|Determines if the input field accepts a password, email address, number or just text. Default is 'text' |
|value|string|The actual text |
|onChange|(value: string) => void|This function is called whenever the text changes. The new text value is passed as a parameter |
|onFocus|() => void|callback function on focus |
|onBlur|(vale: string) => void|callback function on blur |
|onKeyDown|(e: React.KeyboardEvent<HTMLInputElement>, val: string) => void|callback function on key down |
|className|string|Any additional class names to be included for the input field |
|hasIndicator|boolean|Determines if an indicator should be shown at the end of the input. |
|indicatorColor|string|The color of the indicator icon (relevant only if hasIndicator is true) |
|isValid|boolean|pass a boolean to indicate if the input is valid or not |
|inputAttr|{ [key: string]: string \| boolean }|additional attributes that can be passed to a <input> tag |
|placeholder|string|placeholder value |
|inline|boolean|render inline |
|styles|React.CSSProperties|additional styles |
|readOnly|boolean|mark input as read only |
|tabIndex|number|tab index. default is 0 |
### type



---



Determines if the input field accepts a password, email address, number or just text. Default is 'text'


|type|
|-|
|[IInputType](types/IInputType)|
### value



---



The actual text


|type|
|-|
|string|
### onChange



---



This function is called whenever the text changes. The new text value is passed as a parameter


|type|
|-|
|(value: string) => void|
### onFocus



---



callback function on focus


|type|
|-|
|() => void|
### onBlur



---



callback function on blur


|type|
|-|
|(vale: string) => void|
### onKeyDown



---



callback function on key down


|type|
|-|
|(e: React.KeyboardEvent<HTMLInputElement>, val: string) => void|
### className



---



Any additional class names to be included for the input field


|type|
|-|
|string|
### hasIndicator



---



Determines if an indicator should be shown at the end of the input.


|type|
|-|
|boolean|
### indicatorColor



---



The color of the indicator icon (relevant only if hasIndicator is true)


|type|
|-|
|string|
### isValid



---



pass a boolean to indicate if the input is valid or not


|type|
|-|
|boolean|
### inputAttr



---



additional attributes that can be passed to a <input> tag


|type|
|-|
|{ [key: string]: string \| boolean }|
### placeholder



---



placeholder value


|type|
|-|
|string|
### inline



---



render inline


|type|
|-|
|boolean|
### styles



---



additional styles


|type|
|-|
|React.CSSProperties|
### readOnly



---



mark input as read only


|type|
|-|
|boolean|
### tabIndex



---



tab index. default is 0


|type|
|-|
|number|
