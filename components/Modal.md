# Modal


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

## Live preview

[Open Modal in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-modal--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|true|
|onOpen|() => void|No|-|-|
|onClose|() => void|No|-|Log onClose={() => console.log('closed')}|
|title|string|No|-|"Edit asset"|
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
|children|React.ReactNode|No|-|Text <div style={{ padding: 16 }}>Change the asset details here.</div>|

## Related Types

- [IModalProps](../types/IModalProps.md)
- [IAnimation](../types/IAnimation.md)

