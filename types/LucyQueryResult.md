# LucyQueryResult

## Definition

```tsx
export interface LucyQueryResult<T> {
    result: T[];
    trace: {
        parsing: number;
        loading: number;
        execution: number;
        total: number;
        steps: any[];
    };
}
```

## Usage

```tsx
import { LucyQueryResult } from 'uxp/components';
```

