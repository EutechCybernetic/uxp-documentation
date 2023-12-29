# ConfirmButton



This is a confirm button component.




## Installation



```tsx
import {ConfirmButton} from 'uxp/components';
```

## Examples



```tsx
<ConfirmButton
     title="Delete Item"
     loading={buttonLoading}
     onConfirm={async () => {return executeAction("model", "action", {})}}
     onCancel={() => {alert("Canceled")}}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string|The caption for the button |
|icon|string|The url of an icon to show on the button |
|className|string|Any extra css classes to add to the button |
|onConfirm|() => Promise<any>|The callback that gets invoked when the confirm button is clicked |
|onCancel|() => void|The callback that gets invoked when the cancel button is clicked |
|loading|boolean|Set this to `true` to show the button in its 'loading...' state. In this state, an animation will be shown indicating that work is going on and the user will not be able to click the button |
|loadingTitle|string|The caption to show on the button when its in loading state |
|active|boolean||
|disabled|boolean||
### title



---



The caption for the button


|type|
|-|
|string|
### icon



---



The url of an icon to show on the button


|type|
|-|
|string|
### className



---



Any extra css classes to add to the button


|type|
|-|
|string|
### onConfirm



---



The callback that gets invoked when the confirm button is clicked


|type|
|-|
|() => Promise<any>|
### onCancel



---



The callback that gets invoked when the cancel button is clicked


|type|
|-|
|() => void|
### loading



---



Set this to `true` to show the button in its 'loading...' state.
In this state, an animation will be shown indicating that work is going on and the user will not be able to click the button


|type|
|-|
|boolean|
### loadingTitle



---



The caption to show on the button when its in loading state


|type|
|-|
|string|
### active



---





|type|
|-|
|boolean|
### disabled



---





|type|
|-|
|boolean|
