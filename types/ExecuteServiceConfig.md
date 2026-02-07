# ExecuteServiceConfig

Configuration for executing an application service.


## Definition

```tsx
export interface ExecuteServiceConfig extends ExecuteConfigBase {
    /** Execution type discriminator */
    type: 'service';
    /** Application name (e.g., 'System', 'UXP', 'Location') */
    app: string;
    /** Service name (e.g., 'Portal:All', 'AccountNavigation:GetAll') */
    service: string;
    /** Service parameters */
    parameters?: any;
    /** Execution options (caching, batching, etc.) */
    options?: ExecutionOptions;
}
```

## Usage

```tsx
import { ExecuteServiceConfig } from 'uxp/components';
```

## Related Types

- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)

