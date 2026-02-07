# IFilterPanelProps

## Definition

```tsx
interface IFilterPanelProps {
    /**
     * Called whenever the panel is opened
     */
    onOpen?: ICallback,

    /**
     * Called whenever the panel gets dismissed
     */
    onClose?: ICallback,

    /**
     * Called whenever the clear button on the panel is pressed. This button is available only when `enableClear` is set to `true1`
     */
    onClear?: ICallback,
    fillContainer?: React.RefObject<HTMLElement>,

    /**
     * Any extra css classes to add to the filter panel
     */
    className?: string,

    /**
     * Enabled the clear button on the panel
     */
    enableClear?: boolean
    
    children?: React.ReactNode
}
```

## Usage

```tsx
import { IFilterPanelProps } from 'uxp/components';
```

## Related Types

- [ICallback](../types/ICallback.md)

