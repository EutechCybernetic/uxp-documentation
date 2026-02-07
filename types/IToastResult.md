# IToastResult

The result of calling the useToast hook. This gives you methods to invoke notifications for success, errors, etc...
All notifications work the same way but have different styles.



## Definition

```tsx
interface IToastResult {
    success: IToastFunction,
    error: IToastFunction,
    warning: IToastFunction,
    info: IToastFunction,
    custom: IToastFunction,
    remove: IRemoveFunction
}
```

## Usage

```tsx
import { IToastResult } from 'uxp/components';
```

## Related Types

- [IToastFunction](../types/IToastFunction.md)
- [IPartialContent](../types/IPartialContent.md)
- [IToastContent](../types/IToastContent.md)
- [IRemoveFunction](../types/IRemoveFunction.md)

