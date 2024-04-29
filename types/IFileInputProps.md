# IFileInputProps










```tsx
interface IFileInputProps {
    value: File | string
    onChange: (file: File, isValid: boolean) => void,
    allowedTypes?: string[]
    preview?: {
        showName?: boolean // default false,
        showPreview?: boolean // default true
    }
    className?: string,
    dropAreaIcon?: IconProp,
    dropAreaLabel?: string
}
```

## Usage



```tsx
import {IFileInputProps} from 'uxp/components';
```

