# CachingOptions




## Definition

```tsx
export interface CachingOptions {
    /** Enable caching for this request. Default is false */
    enableCache?: boolean;
    /** Cache time in minutes. Default is 5 minutes */
    cacheTime?: number;
    /** Custom cache key. If not provided, will be auto-generated from parameters */
    cacheKey?: string;
}
```

## Usage

```tsx
import { CachingOptions } from 'uxp/components';
```

