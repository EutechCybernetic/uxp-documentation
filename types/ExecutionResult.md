# ExecutionResult

Result structure for execution functions


## Definition

```tsx
export interface ExecutionResult<T = any> {
    data: T | null;
    errorMessage?: string;
    error?: any;
}
```

## Usage

```tsx
import { ExecutionResult } from 'uxp/components';
```

