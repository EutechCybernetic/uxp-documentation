# IModalProps

## Definition

```tsx
interface IModalProps {
    /**
     * Set this to true to make the modal visible
     */
    show: boolean;
    /**
     * Called whenever the modal is opened
     */
    onOpen?: () => void;
    /**
     * Called when the modal gets closed
     */
    onClose?: () => void;
    /**
     * The title set in the title bar of the modal.
     * If the `headerContent` attribute is set, then this value will not be used.
     */
    title?: string;
    /**
     * Any custom component to use to render the dialog close button.
     * If not provided and `showCloseButton` is true, the default close button UI will be rendered.
     */
    closeButton?: JSX.Element;
    /**
     * Any extra css styles to apply
     */
    styles?: React.CSSProperties;
    /**
     * Any extra css classes to apply
     */
    className?: string;
    /**
     * Any custom content to include in the modal header.
     * If set, the `title` property is ignored.
     */
    headerContent?: JSX.Element;
    /**
     * Set to true to allow the dialog to be closed by clicking outside of it
     */
    backgroundDismiss?: boolean;
    /**
     * Set to true to show the close button in the dialog
     */
    showCloseButton?: boolean;
    /**
     * Animation to use when opening/closing the modal
     */
    animation?: IAnimation;
    /**
     * Additional styles for backdrop
     */
    backdropStyles?: React.CSSProperties;
    /**
     * Additional content to render
     */
    renderAdditionalContent?: () => JSX.Element;
    autoSize?: boolean;
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { IModalProps } from 'uxp/components';
```

## Related Types

- [IAnimation](../types/IAnimation.md)

