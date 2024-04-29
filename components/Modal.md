# Modal



Display a modal dialog. The dialog will be placed in front of a invisible sheet above the main UI.


## Installation



```tsx
import {Modal} from 'uxp/components';
```

## Examples



```tsx
<button
     className="btn showcase"
     onClick={() => setShowModal(true)}
 >
     Click to Show Modal
 </button>

 <Modal
     show={showModal}
     onOpen={() => { }}
     onClose={() => setShowModal(false)}
 >
     This is a sample modal
 </Modal>
```

## Properties

|Name|Type|Description|
|-|-|-|
|show|boolean|Set this to true to make the modal visible |
|onOpen|() => void|Called whenever the modal is opened |
|onClose|() => void|Called when the modal gets closed |
|title|string|The title set in the title bar of the modal If the `headerContent` attribute is set, then this value will not be used. |
|closeButton|JSX.Element|any custom component to use to render the dialog close button. If a value is not provided and `showCloseButton` is set to true, the default close button UI will be rendered |
|styles|any|Any extra css styles to apply |
|className|string|Any extra css classes to apply |
|headerContent|JSX.Element|Any custom content to include in the modal header. If this is set, then the `title` property will not be used. |
|backgroundDismiss|boolean|Set to true to allow the dialog to be closed by clicking outside of it |
|showCloseButton|boolean|Set this to 'true' to show the close button in the dialog |
|animation|[IAnimation](types/IAnimation)|Animation to use when opening/closing a modal |
|backdropStyles|any|additional styles for backdrop |
|renderAdditionalContent|() => JSX.Element|additional content to render |
|autoSize|boolean||
### show



---



Set this to true to make the modal visible


|type|
|-|
|boolean|
### onOpen



---



Called whenever the modal is opened


|type|
|-|
|() => void|
### onClose



---



Called when the modal gets closed


|type|
|-|
|() => void|
### title



---



The title set in the title bar of the modal
If the `headerContent` attribute is set, then this value will not be used.


|type|
|-|
|string|
### closeButton



---



any custom component to use to render the dialog close button.
If a value is not provided and `showCloseButton` is set to true, the default close button UI will be rendered


|type|
|-|
|JSX.Element|
### styles



---



Any extra css styles to apply


|type|
|-|
|any|
### className



---



Any extra css classes to apply


|type|
|-|
|string|
### headerContent



---



Any custom content to include in the modal header.
If this is set, then the `title` property will not be used.


|type|
|-|
|JSX.Element|
### backgroundDismiss



---



Set to true to allow the dialog to be closed by clicking outside of it


|type|
|-|
|boolean|
### showCloseButton



---



Set this to 'true' to show the close button in the dialog


|type|
|-|
|boolean|
### animation



---



Animation to use when opening/closing a modal


|type|
|-|
|[IAnimation](types/IAnimation)|
### backdropStyles



---



additional styles for backdrop


|type|
|-|
|any|
### renderAdditionalContent



---



additional content to render


|type|
|-|
|() => JSX.Element|
### autoSize



---





|type|
|-|
|boolean|
