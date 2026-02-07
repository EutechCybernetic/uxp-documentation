# ExecuteCollectionConfig

Configuration for executing a Lucy model collection service.


## Definition

```tsx
export interface ExecuteCollectionConfig extends ExecuteConfigBase {
    /** Execution type discriminator */
    type: 'collection';
    /** Lucy model name */
    model: string;
    /** Collection name */
    collection: string;
    /** Collection parameters */
    parameters?: any;
    /** Execution options (caching, batching, etc.) */
    options?: ExecutionOptions;
}
```

## Usage

```tsx
import { ExecuteCollectionConfig } from 'uxp/components';
```

## Related Types

- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)

