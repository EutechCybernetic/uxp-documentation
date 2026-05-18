# DropDownButton

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=popups-dropdownbutton--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DropDownButton live demo"
></iframe>


This component wraps another component and shows a tooltip for the component it is wrapping, whenever the user moves the mouse over it.





## Installation

```tsx
import { DropDownButton } from 'uxp/components';
```

## Signature

```tsx
const DropDownButton: React.FunctionComponent<IDropDownButtonProps>
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

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|content|() => JSX.Element|Yes|-|*|
|position|[IDropDownButtonPosition](../types/IDropDownButtonPosition.md)|No|-|-|
|showOnHover|boolean|No|-|-|
|keepShowingOnHover|boolean|No|-|-|
|className|string|No|-|-|
|onOpen|() => void|No|-|-|
|onClose|() => void|No|-|-|
|forceClose|boolean|No|-|-|
|disableScroll|boolean|No|-|-|
|autoPosition|boolean|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IDropDownButtonProps](../types/IDropDownButtonProps.md)
- [IDropDownButtonPosition](../types/IDropDownButtonPosition.md)

