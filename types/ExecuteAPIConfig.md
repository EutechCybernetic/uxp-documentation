# ExecuteAPIConfig

Configuration for executing a direct API call.


## Definition

```tsx
export interface ExecuteAPIConfig extends ExecuteConfigBase {
    /** Execution type discriminator */
    type: 'api';
    /** Axios request configuration */
    config: AxiosRequestConfig;
    /** Caching options */
    options?: CachingOptions;
}
```

## Usage

```tsx
import { ExecuteAPIConfig } from 'uxp/components';
```

## Related Types

- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [CachingOptions](../types/CachingOptions.md)

