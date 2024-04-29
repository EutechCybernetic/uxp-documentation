# TextArea




A standard textarea (multi line text box)



## Installation



```tsx
import {TextArea} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|value|string|The actual text |
|onChange|(value: string) => void|This function is called whenever the text changes. The new text value is passed as a parameter |
|onFocus|() => void|callback function on focus |
|onBlur|(vale: string) => void|callback function on blur |
|onKeyDown|(e: React.KeyboardEvent<HTMLTextAreaElement>, val: string) => void|callback function on key down |
|className|string|Any additional class names to be included for the input field |
|styles|React.CSSProperties|additional styles |
|readOnly|boolean|mark input as read only |
|tabIndex|number|tab index. default is 0 |
|rows|number|number of rows |
|cols|number|number of cols |
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
|(e: React.KeyboardEvent<HTMLTextAreaElement>, val: string) => void|
### className



---



Any additional class names to be included for the input field


|type|
|-|
|string|
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
### rows



---



number of rows


|type|
|-|
|number|
### cols



---



number of cols


|type|
|-|
|number|
