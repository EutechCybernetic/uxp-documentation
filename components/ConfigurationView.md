# ConfigurationView


Configuration view with sidebar navigation and section content


## Installation

```tsx
import { ConfigurationView } from 'uxp/components';
```

## Signature

```tsx
const ConfigurationView: React.FunctionComponent<IConfigurationViewProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|uxpContext|[IContextProvider](../types/IContextProvider.md)|Yes|-|-|
|title|string|Yes|-|-|
|sections|[IConfigurationViewSection[]](../types/IConfigurationViewSection.md)|Yes|-|-|
|selected|string|No|-|-|
|onChangeSection|(id: string) => void|No|-|-|

## Related Types

- [IConfigurationViewProps](../types/IConfigurationViewProps.md)
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
- [IConfigurationViewSection](../types/IConfigurationViewSection.md)

