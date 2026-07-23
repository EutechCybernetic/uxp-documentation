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
    /**
     * Storage backend. Default 'memory' (wiped on reload, never persists PII to disk).
     * Use 'local' only for non-sensitive, long-lived data that should survive a reload.
     */
    store?: 'memory' | 'local';
}
```

## Usage

```tsx
import { CachingOptions } from 'uxp/components';
```

