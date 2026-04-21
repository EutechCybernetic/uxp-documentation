# IConfirmAlertProps

## Definition

```tsx
export interface IConfirmAlertProps {
    icon?: IconProp
    title?: string | IAlertContent,
    content: string | IAlertContent,
    confirmButtonTitle?: string,
    cancelButtonTitle?: string,
    requireVerification?: boolean,
    verificationText?: string,
    verificationTitle?: string,
    verificationPrompt?: string,
    verificationError?: string,
    verificationConfirmButtonTitle?: string,
    caseSensitive?: boolean
}
```

## Usage

```tsx
import { IConfirmAlertProps } from 'uxp/components';
```

## Related Types

- [IAlertContent](../types/IAlertContent.md)

