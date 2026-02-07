# SearchParams


Generic type for parsed search parameters, ensuring non-object values are strings.


## Definition

```tsx
export type SearchParams<T> = {
    [K in keyof T]: T[K] extends object ? T[K] : string;
};
```

## Usage

```tsx
import { SearchParams } from 'uxp/components';
```

