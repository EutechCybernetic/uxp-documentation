# ILinkWidgetContainerProps

## Definition

```tsx
interface ILinkWidgetContainerProps {
    /**
     *  Set this to true to make the container visible
     */
    show: boolean,
    /**
     * Called whenever the container is opened
     */
    onOpen?: any,
    /**
    * Called when the container gets closed
    */
    onClose?: any,
    /**
     * The title set in the title bar of the container
     */
    title?: any,
    /**
     * Any extra css classes to apply
     */
    className?: string,
    /**
    * Any custom content to include in the container toolbar.
    */
    toolbarContent?: any
    children?: React.ReactNode
}
```

## Usage

```tsx
import { ILinkWidgetContainerProps } from 'uxp/components';
```

