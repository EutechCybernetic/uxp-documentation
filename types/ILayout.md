# ILayout

## Definition

```tsx
export interface ILayout {
    x: number,
    y: number,
    w: number,
    h: number,
    isDraggable?: boolean,
    isResizable?: boolean,
    maxH?: number,
    maxW?: number,
    minH?: number,
    minW?: number,
    static: boolean,
    i: string,
    _id: string
}
```

## Usage

```tsx
import { ILayout } from 'uxp/components';
```

