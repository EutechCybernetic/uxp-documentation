# ExecuteQueryConfig

Configuration for executing a Lucy query.


## Definition

```tsx
export interface ExecuteQueryConfig extends ExecuteConfigBase {
    /** Execution type discriminator */
    type: 'query';
    /** Query parameters */
    params: QueryParams;
}
```

## Usage

```tsx
import { ExecuteQueryConfig } from 'uxp/components';
```

## Related Types

- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [QueryParams](../types/QueryParams.md)

