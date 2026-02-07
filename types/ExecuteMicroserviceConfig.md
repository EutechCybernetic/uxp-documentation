# ExecuteMicroserviceConfig

Configuration for executing a microservice call.


## Definition

```tsx
export interface ExecuteMicroserviceConfig extends ExecuteConfigBase {
    /** Execution type discriminator */
    type: 'microservice';
    /** Microservice configuration */
    config: {
        /** Microservice name */
        serviceName: string;
        /** API route path */
        route: string;
        /** HTTP method */
        method: 'get' | 'post' | 'put' | 'patch' | 'delete';
        /** URL parameters */
        params?: any;
        /** Request body data */
        data?: any;
        /** Additional configurations */
        configurations?: any;
    };
    /** Caching options */
    options?: CachingOptions;
}
```

## Usage

```tsx
import { ExecuteMicroserviceConfig } from 'uxp/components';
```

## Related Types

- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [CachingOptions](../types/CachingOptions.md)

