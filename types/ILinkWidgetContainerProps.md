# ILinkWidgetContainerProps

## Definition

```tsx
interface ILinkWidgetContainerProps {
    /**
     *  Set this to true to make the container visible
     * @example true
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
    /**
     * @example Link button
     * ```tsx
     * <LinkButtonWidget link="https://www.iviva.com" icon="https://static.iviva.com/iviva-logo-light.png" label="Visit iviva" />
     * ```
     */
    children?: React.ReactNode
}
```

## Usage

```tsx
import { ILinkWidgetContainerProps } from 'uxp/components';
```

