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
|className|string|Any additional class names to be included for the input field |
|hasIndicator|boolean|Determines if an indicator should be shown at the end of the input. |
|indicatorColor|string|The color of the indicator icon (relevant only if hasIndicator is true) |
|isValid|boolean||
|inputAttr|{ [key: string]: string \| boolean }||
|placeholder|string||
|inline|boolean||
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





|type|
|-|
|boolean|
### inputAttr



---





|type|
|-|
|{ [key: string]: string \| boolean }|
### placeholder



---





|type|
|-|
|string|
### inline



---





|type|
|-|
|boolean|
