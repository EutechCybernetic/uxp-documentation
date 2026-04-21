# NoInteractionMode

No interaction mode


## Definition

```tsx
interface NoInteractionMode {
    onClickRow?: never;
    onClickColumn?: never;
    onUpdateItem?: never;
    onDeleteItem?: never;
    onReorderItems?: never;
    roles?: never;
    labels?: {
        add?: string;
        saved?: string;
    };
}
```

## Usage

```tsx
import { NoInteractionMode } from 'uxp/components';
```

