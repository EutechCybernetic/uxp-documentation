# GridSettings

## Definition

```tsx
export interface GridSettings {
    margin?: number;           // px gap between widgets (applied as [n, n])
    containerPadding?: number; // px padding around the grid container (applied as [n, n])
    columns?: number;          // override column count for all breakpoints
    showEmptyPlaceholder?: boolean; // show the + placeholder on an empty dashboard (default: true)
    showGridlines?: boolean;        // show gridlines in edit mode
    allowFreePositioning?: boolean; // overlay: default true; standard: default false — false = compacted grid with margin/padding
}
```

## Usage

```tsx
import { GridSettings } from 'uxp/components';
```

