# ILinkButtonWidgetProps

## Definition

```tsx
interface ILinkButtonWidgetProps {
    /**
     * link url 
     */
    link: string,
    /**
     * target for link
     * default is _self
     */
    target?: "_self" | "_blank" | "_parent"
    /**
     * icon to show
     */
    icon: string,
    /**
     * label for link
     */
    label: string
}
```

## Usage

```tsx
import { ILinkButtonWidgetProps } from 'uxp/components';
```

