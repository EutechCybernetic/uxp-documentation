# AsyncButton



This is a button that is meant to be used to execute a async action.
The onClick handler should return a promise. The button's behavior is to set the status as 'loading...' until the promise that was returned evluates and returns a result or throws an exception.




## Installation



```tsx
import {AsyncButton} from 'uxp/components';
```

## Examples



```tsx
<AsyncButton
     title="Submit"
     onClick={async() => {return executeAction("model", "action", {})}}
     icon="https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg"
     loadingTitle="Submitting..."
     className="custom-css-class"
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string|The caption for the button |
|icon|string|The url of an icon to show on the button |
|className|string|Any extra css classes to add to the button |
|onClick|() => Promise<any>|The callback that gets invoked when the button is clicked. It must return a Promise |
|active|boolean|Set button to active state when true |
|disabled|boolean|Set button to disabled state when true |
|loadingTitle|string|Text to show when in loading state |
|onError|(e: any) => void|a callback function to call on error |
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
### onClick



---



The callback that gets invoked when the button is clicked.
It must return a Promise


|type|
|-|
|() => Promise<any>|
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
### loadingTitle



---



Text to show when in loading state


|type|
|-|
|string|
### onError



---



a callback function to call on error


|type|
|-|
|(e: any) => void|
