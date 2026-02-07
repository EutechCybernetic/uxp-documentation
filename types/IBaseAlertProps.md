# IBaseAlertProps

## Definition

```tsx
export interface IBaseAlertProps {
    icon?: IconProp
    title?: string | IAlertContent,
    content: string | IAlertContent,
    showCloseBtn?: boolean,
    autoClose?: boolean,
    closeAfter?: number,
    closeButtonTitle?: string
}
```

## Usage

```tsx
import { IBaseAlertProps } from 'uxp/components';
```

## Related Types

- [IAlertContent](../types/IAlertContent.md)

