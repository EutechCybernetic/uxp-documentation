# DropDownButton



This component wraps another component and shows a tooltip for the component it is wrapping, whenever the user moves the mouse over it.



## Installation



```tsx
import {DropDownButton} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|content|() => JSX.Element|The content to show inside the Dropdown |
|position|[IDropDownButtonPosition](types/IDropDownButtonPosition)|Where the dropdown should be placed relative to the element it is being displayed for default is right |
|showOnHover|boolean|If this is true dropdown will show on mouse over & hide n mouse out If this is false dropdown ill show on click |
|className|string||
### content



---



The content to show inside the Dropdown


|type|
|-|
|() => JSX.Element|


```tsx
content={() => <div>Dropdown Content</div>}
```

### position



---



Where the dropdown should be placed relative to the element it is being displayed for
default is right


|type|
|-|
|[IDropDownButtonPosition](types/IDropDownButtonPosition)|
### showOnHover



---



If this is true dropdown will show on mouse over & hide n mouse out
If this is false dropdown ill show on click


|type|
|-|
|boolean|
### className



---





|type|
|-|
|string|
