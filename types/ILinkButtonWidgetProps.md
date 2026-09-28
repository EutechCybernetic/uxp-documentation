# ILinkButtonWidgetProps

## Definition

```tsx
interface ILinkButtonWidgetProps {
    /**
     * link url 
     * @example "https://www.iviva.com"
     */
    link: string,
    /**
     * target for link
     * default is _self
     * @default '_self'
     * @example "_blank"
     */
    target?: "_self" | "_blank" | "_parent"
    /**
     * icon to show
     * @example "https://static.iviva.com/iviva-logo-light.png"
     */
    icon: string,
    /**
     * label for link
     * @example "Visit iviva"
     */
    label: string
}
```

## Usage

```tsx
import { ILinkButtonWidgetProps } from 'uxp/components';
```

