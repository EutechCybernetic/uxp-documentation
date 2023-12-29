# DropDownButton



This component wraps another component and shows a tooltip for the component it is wrapping, whenever the user moves the mouse over it.





## Installation



```tsx
import {DropDownButton} from 'uxp/components';
```

## Examples



```tsx
Dropdown button basic example

 <DropDownButton
     content={() => <div>This is dropdown content</div>}
 >
     <button className="btn showcase" >Click to Show the dropdown</button>
 </DropDownButton>
```



```tsx
Dropdown button example with options

 <DropDownButton
     content={() => <div>This is dropdown content</div>}
     position="left"
     showOnHover
 >
     <button className="btn showcase" >Click to Show the dropdown</button>
 </DropDownButton>
```



```tsx
Dropdown button example with forceClose

 // Be carefull when handeling the state. `closePopup` state must reset to default (false) when the popup closes
 //state
 let [closePopup, setClosePopup] = React.useState(false)

 <DropDownButton
     content={() => <>
                 <h1>Click to close</h1>
                 <Button title="Click" onClick={() => { setClosePopup(true) }} />
             </>}
     onOpen={() => { }}
     onClose={() => { setClosePopup(false) }}
     forceClose={closePopup}
 >
     <button className="btn showcase" >Click to Show the dropdown</button>
 </DropDownButton>
```

## Properties

|Name|Type|Description|
|-|-|-|
|content|() => JSX.Element|The content to show inside the Dropdown |
|position|[IDropDownButtonPosition](types/IDropDownButtonPosition)|Where the dropdown should be placed relative to the element it is being displayed for default is right |
|showOnHover|boolean|If this is true dropdown will show on mouse over & hide n mouse out If this is false dropdown ill show on click |
|className|string||
|onOpen|() => void|callback function when the popup is open |
|onClose|() => void|callback function when the popup is closed |
|forceClose|boolean|an option to force close a popup |
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
### onOpen



---



callback function when the popup is open


|type|
|-|
|() => void|
### onClose



---



callback function when the popup is closed


|type|
|-|
|() => void|
### forceClose



---



an option to force close a popup


|type|
|-|
|boolean|
