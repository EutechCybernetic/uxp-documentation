# Modal

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=popups-modal--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Modal live demo"
></iframe>



Display a modal dialog. The dialog will be placed in front of a invisible sheet above the main UI.



## Installation

```tsx
import { Modal } from 'uxp/components';
```

## Signature

```tsx
const Modal: React.FunctionComponent<IModalProps>
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

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onOpen|() => void|No|-|-|
|onClose|() => void|No|-|-|
|title|string|No|-|-|
|closeButton|JSX.Element|No|-|-|
|styles|React.CSSProperties|No|-|-|
|className|string|No|-|-|
|headerContent|JSX.Element|No|-|-|
|backgroundDismiss|boolean|No|-|-|
|showCloseButton|boolean|No|-|-|
|animation|[IAnimation](../types/IAnimation.md)|No|-|-|
|backdropStyles|React.CSSProperties|No|-|-|
|renderAdditionalContent|() => JSX.Element|No|-|-|
|autoSize|boolean|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IModalProps](../types/IModalProps.md)
- [IAnimation](../types/IAnimation.md)

