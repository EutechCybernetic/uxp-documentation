# IToastResult



The result of calling the useToast hook. This gives you methods to invoke notifications for success, errors, etc...
All notifications work the same way but have different styles.





```tsx
interface IToastResult {
    success: IToast,
    error: IToast,
    warning: IToast,
    info: IToast,
    custom: IToast,
    remove: IRemove
}
```

## Usage



```tsx
import {IToastResult} from 'uxp/components';
```

