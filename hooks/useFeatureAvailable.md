# useFeatureAvailable


`null` until the answer arrives, so a caller can hold the affected UI back rather than render
something that is about to disappear. Only asks while `active`.


## Installation

```tsx
import { useFeatureAvailable } from 'uxp/components';
```

## Signature

```tsx
function useFeatureAvailable(config: ExecuteConfig, options?: FeatureOptions & { active?: boolean }): boolean | null
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

