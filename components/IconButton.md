# IconButton






Default set of buttons with icons



## Installation



```tsx
import {IconButton} from 'uxp/components';
```

## Examples



```tsx
<IconButton
     type="search"
     onClick={()=> {alert("Clicked")}}
     className="custom-css-class"
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|type|[IButtonType](types/IButtonType)|button type |
|active|boolean|Set button to active state when true |
|disabled|boolean|Set button to disabled state when true |
|onClick|() => void|The callback that gets invoked when the button is clicked. |
|className|string|Any extra css classes to apply |
|size|[IButtonSize](types/IButtonSize)|button size. Can be either 'large' or 'small' |
|borderless|boolean|set to `true` to prevent a border from being shown for the button |
### type



---



button type


|type|
|-|
|[IButtonType](types/IButtonType)|
### active



---



Set button to active state when true


|type|
|-|
|boolean|
### disabled



---



Set button to disabled state when true


|type|
|-|
|boolean|
### onClick



---



The callback that gets invoked when the button is clicked.


|type|
|-|
|() => void|
### className



---



Any extra css classes to apply


|type|
|-|
|string|
### size



---



button size. Can be either 'large' or 'small'


|type|
|-|
|[IButtonSize](types/IButtonSize)|
### borderless



---



set to `true` to prevent a border from being shown for the button


|type|
|-|
|boolean|
