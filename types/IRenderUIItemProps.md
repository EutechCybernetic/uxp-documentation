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
    showDefaultHeader?: boolean
}
```

## Usage

```tsx
import { IRenderUIItemProps } from 'uxp/components';
```

