# IPartialContent



This function is invoked to display a toast (notification popup).





```tsx
interface IPartialContent {
    icon?: string | IToastContent,
    title?: string | IToastContent,
    content: string | IToastContent,
    showCloseBtn?: boolean,
    autoClose?: boolean,
    onClose?: () => void,
    closeAfter?: number,
}
```

## Usage



```tsx
import {IPartialContent} from 'uxp/components';
```

