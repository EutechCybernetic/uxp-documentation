# useExecuteRequest


Generic hook for executing safe context methods with loading state, debounce, and auto-execution.

Returns { loading, data, error, errorMessage, execute, refresh, reset }
Handle success/error in your component using the returned data/error values.



## Installation

```tsx
import { useExecuteRequest } from 'uxp/components';
```

## Signature

```tsx
function useExecuteRequest(config: ExecuteConfig, options?: UseExecuteOptions<T>): UseExecuteResult<T>
```

## Examples

```tsx
// Auto-execute on mount - state (loading, data, error) updates automatically
const { loading, data, error } = useExecuteRequest({
  type: 'service',
  app: 'UXP',
  service: 'Portal:all'
});
```

```tsx
// Auto-execute when dependencies change
const { loading, data, error } = useExecuteRequest({
  type: 'action',
  model: 'User',
  action: 'GetDetails',
  parameters: { id: userId }
}, { dependencies: [userId] });
```

```tsx
// Use service configuration from services.ts (recommended)
const { loading, data, error } = useExecuteRequest(NavigationServices.getAll());
```

```tsx
// Override config-level extraction/transformation
const { data } = useExecuteRequest(
  NavigationServices.getAll(),
  { extractData: 'customPath' }  // Overrides service-level extractData
);
```

```tsx
// Manual execution with promise - handle result yourself (no state update)
const { execute } = useExecuteRequest(
  RouteServices.create({}),
  { autoExecute: false }
);
const result = await execute({ Route: '/custom', PageID: 'page-1' });
if (result.error) { //handle error  }
else {  //use result.data  }
```

```tsx
// Manual execution with state update
const { loading, data, error, execute } = useExecuteRequest(
  RouteServices.update('', {}),
  { autoExecute: false }
);
await execute({ Key: '123', Route: '/new' }, true); // Pass true to update state
```

```tsx
// UI refresh with debounce
const { loading, data, refresh } = useExecuteRequest(
  PortalServices.getAll(),
  { debounce: 500 }
);
<button onClick={() => refresh()}>Refresh</button> // Updates state with debounce
<button onClick={() => refresh(true)}>Refresh Now</button> // Updates state immediately
```

```tsx
// Polling - executes immediately on mount, then every 5 seconds
const { loading, data, error } = useExecuteRequest(
  MonitoringServices.getMetrics(),
  { polling: 5000 }
);
// Manual refresh resets the polling timer
<button onClick={() => refresh()}>Refresh Now</button>
```

```tsx
// Callback pattern with dynamic parameters - useful for ObjectSearchComponent
const { execute } = useExecuteRequest(
  LocationServices.getAll({ page: 1, pageSize: 50 }),
  { autoExecute: false }
);

const getAll = async (page, pageSize, query, filters) => {
  const result = await execute({ page, pageSize, query, ...filters });
  return { items: result.data || [] };
}
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

