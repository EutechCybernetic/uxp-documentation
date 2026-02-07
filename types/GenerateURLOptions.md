# GenerateURLOptions

Options for generating URLs within RouterContext.


## Definition

```tsx
export interface GenerateURLOptions {
    /** Target path, defaults to current location */
    path?: string;

    /** Query parameters to add or update */
    searchParams?: Record<string, any>;

    /** Query parameters to remove */
    removeParams?: string[];

    /** Merge with current params (default: true) */
    mergeParams?: boolean;
}
```

## Usage

```tsx
import { GenerateURLOptions } from 'uxp/components';
```

