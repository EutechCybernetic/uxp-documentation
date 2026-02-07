# ExecuteActionConfig

Configuration for executing a Lucy model action.


## Definition

```tsx
export interface ExecuteActionConfig extends ExecuteConfigBase {
    /** Execution type discriminator */
    type: 'action';
    /** Lucy model name (e.g., 'Location', 'User') */
    model: string;
    /** Action name (e.g., 'GetAll', 'Create', 'Update') */
    action: string;
    /** Action parameters */
    parameters?: any;
    /** Execution options (caching, batching, etc.) */
    options?: ExecutionOptions;
}
```

## Usage

```tsx
import { ExecuteActionConfig } from 'uxp/components';
```

## Related Types

- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)

