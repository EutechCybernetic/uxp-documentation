# IPartialContent

## Definition

```tsx
interface IPartialContent {
    icon?: string | IToastContent;
    title?: string | IToastContent;
    content: string | IToastContent;
    showCloseBtn?: boolean;
    autoClose?: boolean;
    onClose?: () => void;
    closeAfter?: number;
}
```

## Usage

```tsx
import { IPartialContent } from 'uxp/components';
```

## Related Types

- [IToastContent](../types/IToastContent.md)

