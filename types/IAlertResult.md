# IAlertResult



The result of calling the useAlert hook. This gives you methods to invoke a alert or a confirm alert






```tsx
interface IAlertResult {
    show: (content: string | IBaseAlertProps) => Promise<any>,
    confirm: (content: string | IConfirmAlertProps) => Promise<boolean>
    form: (content: IFormAlertProps) => Promise<any>
}
```

## Usage



```tsx
import {IAlertResult} from 'uxp/components';
```

