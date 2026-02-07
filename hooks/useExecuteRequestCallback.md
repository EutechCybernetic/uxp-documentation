# useExecuteRequestCallback


Lightweight callback wrapper around `useExecuteRequest`.

Returns a stable async function that executes the provided config
**without triggering loading/data/error state updates**.

Useful for:
- Passing execution callbacks to components (e.g. search, autocomplete, tables)
- Dynamic parameter execution
- One-off requests where local state management is not needed

Internally:
- Forces `autoExecute = false`
- Disables debounce and polling
- Delegates execution to `useExecuteRequest`



## Installation

```tsx
import { useExecuteRequestCallback } from 'uxp/components';
```

## Signature

```tsx
function useExecuteRequestCallback(config: ExecuteConfig, options?: Omit<UseExecuteOptions<T>, 'debounbce' | 'autoExecute' | 'polling'>): (param?: any) => Promise<ExecutionResult<T>>
```

## Examples

```tsx
// Callback-style execution (recommended for ObjectSearchComponent)
const getLocations = useExecuteRequestCallback(
  LocationServices.getAll({ page: 1, pageSize: 50 })
);

const result = await getLocations({ query: 'Colombo' });
return result.data || [];
```

## Related Types

- [ExecuteConfig](../types/ExecuteConfig.md)
- [ExecuteActionConfig](../types/ExecuteActionConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [ExecuteServiceConfig](../types/ExecuteServiceConfig.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteAPIConfig](../types/ExecuteAPIConfig.md)
- [ExecuteQueryConfig](../types/ExecuteQueryConfig.md)
- [QueryParams](../types/QueryParams.md)
- [ExecuteCollectionConfig](../types/ExecuteCollectionConfig.md)

