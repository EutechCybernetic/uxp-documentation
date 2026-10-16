# CustomValidateResponse

## Definition

```tsx
export interface CustomValidateResponse {
    valid: boolean,
    error?: string
    /** A hint that does not block the save. Shown under the field only when it has no error. */
    warning?: string
}
```

## Usage

```tsx
import { CustomValidateResponse } from 'uxp/components';
```

