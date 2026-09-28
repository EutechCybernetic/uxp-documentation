# ConfigurationView


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

## Live preview

[Open ConfigurationView in the playground →](<https://story.uxp.iviva.com/?path=/docs/forms-configuration-view-configurationview--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|uxpContext|[IContextProvider](../types/IContextProvider.md)|Yes|-|-|
|title|string|No|-|"Settings"|
|sections|[IConfigurationViewSection[]](../types/IConfigurationViewSection.md)|Yes|-|Two sections sections={[ { id: 'general', title: 'General', content: <div>Accou…|
|actions|React.ReactNode|No|-|-|
|selected|string|No|-|"general"|
|onChangeSection|(id: string) => void|No|-|Log onChangeSection={(id) => console.log('section', id)}|
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

