# IRenderUIItemProps

## Definition

```tsx
export interface IRenderUIItemProps {
    id: string,
    label?: string,
    description?: string,
    component: any,
    uiProps?: any,
    title?: string,
     /**
     * @deprecated in V5 all UIs will be rendered within the base layout - all will have the header and sidebar
     */
    showDefaultHeader?: boolean // default is true. hide the header if set to false
}
```

## Usage

```tsx
import { IRenderUIItemProps } from 'uxp/components';
```

