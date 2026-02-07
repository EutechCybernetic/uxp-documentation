# executeConfig


Executes an ExecuteConfig directly using the provided context.
Useful for callback patterns where useExecuteRequest hook cannot be used.



## Installation

```tsx
import { executeConfig } from 'uxp/components';
```

## Signature

```tsx
function executeConfig(context: IContextProvider, config: ExecuteConfig, options?: Pick<UseExecuteOptions<T>, 'extractData' | 'transformData' | 'defaultValue' | 'preview'>): Promise<ExecutionResult<T>>
```

## Examples

```tsx
// Basic usage in a callback (e.g., ObjectSearchComponent's getAll)
const getAll = async (page, pageSize) => {
  const config = LocationServices.getAll({ page, pageSize });
  const data = await executeConfig(context, config);
  return { items: data };
}
```

```tsx
// Override extraction/transformation at runtime
const result = await executeConfig(
  context,
  LocationServices.getAll(),
  { extractData: 'customPath', transformData: (data) => processData(data) }
);
```

```tsx
// Preview mode with sample data
const result = await executeConfig(
  context,
  LocationServices.getAll(),
  { preview: { isPreview: true, sampleData: mockLocations } }
);
```

```tsx
// Error handling
try {
  const data = await executeConfig(context, config);
  console.log(data);
} catch (error) {
  console.error('Failed:', error.message);
}
```

## Related Types

- [IContextProvider](../types/IContextProvider.md)
- [IPartialContextProvider](../types/IPartialContextProvider.md)
- [Language](../types/Language.md)
- [ICustomThemes](../types/ICustomThemes.md)
- [IThemeProps](../types/IThemeProps.md)
- [ThemeType](../types/ThemeType.md)
- [UserDetails](../types/UserDetails.md)
- [NavigationLink](../types/NavigationLink.md)
- [Routes](../types/Routes.md)
- [ConfiguredPage](../types/ConfiguredPage.md)
- [ComponentType](../types/ComponentType.md)
- [IUXPFunctions](../types/IUXPFunctions.md)
- [ViewOverride](../types/ViewOverride.md)
- [Environment](../types/Environment.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [IDataFunction](../types/IDataFunction.md)
- [QueryParams](../types/QueryParams.md)
- [ExecutionResult](../types/ExecutionResult.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [LucyQueryResult](../types/LucyQueryResult.md)
- [ExecuteConfig](../types/ExecuteConfig.md)
- [ExecuteActionConfig](../types/ExecuteActionConfig.md)
- [ExecuteServiceConfig](../types/ExecuteServiceConfig.md)
- [ExecuteAPIConfig](../types/ExecuteAPIConfig.md)
- [ExecuteQueryConfig](../types/ExecuteQueryConfig.md)
- [ExecuteCollectionConfig](../types/ExecuteCollectionConfig.md)

