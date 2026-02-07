# ExecuteRequestConfig

## Definition

```tsx
interface ExecuteRequestConfig {
    /**
    * Execution configuration for data fetching (action, service, microservice, etc.)
     */
    executeConfig: ExecuteConfig;

    /**
     * Optional execution options (autoExecute, debounce, polling, dependencies, etc.)
     */
    executeOptions?: UseExecuteOptions;
}
```

## Usage

```tsx
import { ExecuteRequestConfig } from 'uxp/components';
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
- [UseExecuteOptions](../types/UseExecuteOptions.md)

