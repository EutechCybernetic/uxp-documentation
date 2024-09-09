# Button



This is a basic button component.




## Installation



```tsx
import {Button} from 'uxp/components';
```

## Examples



```tsx
<Button
     title="Click"
     onClick={() => {alert("Clicked")}}
 />
```



```tsx
<Button
     title="Click"
     onClick={() => {alert("Clicked")}}
     icon="https://static.iviva.com/images/lucy-logo.svg"
     loading={isLoading}
     loadingTitle="Loading..."
     className="custom-css-class"
/>
```



```tsx
<Button
     title='Save'
     loadingTitle='Saving...'
     useLoadingSpinner={true}
/>
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string|The caption for the button |
|icon|string|Button icon. you can either use a url or fontawesome icon Here is a example for using fontawesome icons icon={'fas save'} |
|iconPosition|'left' \| 'right'|position of the icon |
|className|string|Any extra css classes to add to the button |
|onClick|() => void|The callback that gets invoked when the button is clicked |
|loading|boolean|Set this to `true` to show the button in its 'loading...' state. In this state, an animation will be shown indicating that work is going on and the user will not be able to click the button |
|loadingTitle|string|The caption to show on the button when its in loading state |
|active|boolean|to mark the button as active this will highlight the button |
|disabled|boolean|to disable the button |
|styles|React.CSSProperties|any custom inline styles to the button |
|iconStyles|React.CSSProperties|any custom inline styles for the icon container |
|useLoadingSpinner|boolean|show loading spinners in place of icons (even if the icon is not there it will show the spinner on the left sides) when the button is in loading state, |


### title



---



The caption for the button


|type|
|-|
|string|


### icon



---



Button icon.
you can either use a url or fontawesome icon

Here is a example for using fontawesome icons
icon={'fas save'}


|type|
|-|
|string|


### iconPosition



---



position of the icon


|type|
|-|
|'left' \| 'right'|


### className



---



Any extra css classes to add to the button


|type|
|-|
|string|


### onClick



---



The callback that gets invoked when the button is clicked


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



to mark the button as active
this will highlight the button


|type|
|-|
|boolean|


### disabled



---



to disable the button


|type|
|-|
|boolean|


### styles



---



any custom inline styles to the button


|type|
|-|
|React.CSSProperties|


### iconStyles



---



any custom inline styles for the icon container


|type|
|-|
|React.CSSProperties|


### useLoadingSpinner



---



show loading spinners in place of icons (even if the icon is not there it will show the spinner on the left sides)  when the button is in loading state,


|type|
|-|
|boolean|


