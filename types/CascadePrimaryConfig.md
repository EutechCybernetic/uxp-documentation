# CascadePrimaryConfig


First-level select configuration. `options` follows the full Select contract: a static
array, or a paginated data function `(max, lastPageToken, args) => Promise<{items, pageToken}>`
(args carries `query` — the debounced search text). A function must be referentially
stable (wrap in useCallback), same as Select.


## Definition

```tsx
export interface CascadePrimaryConfig extends CascadeLevelConfig {
    /** Static array, or a paginated `IDataFunction` — the full Select data contract. */
    options: any[] | IDataFunction;
}
```

## Usage

```tsx
import { CascadePrimaryConfig } from 'uxp/components';
```

## Related Types

- [CascadeLevelConfig](../types/CascadeLevelConfig.md)
- [IDataFunction](../types/IDataFunction.md)

