# ConfigurationView

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-configurationview--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ConfigurationView live demo"
></iframe>



Configuration view with sidebar navigation and section content.
Use `mode='single'` for pages that have one section and need no sidebar.


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
|title|string|No|-|-|
|sections|[IConfigurationViewSection[]](../types/IConfigurationViewSection.md)|Yes|-|-|
|selected|string|No|-|-|
|onChangeSection|(id: string) => void|No|-|-|
|mode|'single' \| 'multiple'|No|-|-|

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
- [ObjectTab](../types/ObjectTab.md)
- [ObjectTabComponent](../types/ObjectTabComponent.md)
- [Environment](../types/Environment.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [IDataFunction](../types/IDataFunction.md)
- [QueryParams](../types/QueryParams.md)
- [ExecutionResult](../types/ExecutionResult.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [LucyQueryResult](../types/LucyQueryResult.md)
- [PublishNotificationParams](../types/PublishNotificationParams.md)
- [NotificationSeverity](../types/NotificationSeverity.md)
- [ResolveNotificationsFilters](../types/ResolveNotificationsFilters.md)
- [IConfigurationViewSection](../types/IConfigurationViewSection.md)

