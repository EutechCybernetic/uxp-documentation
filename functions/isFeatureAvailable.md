# isFeatureAvailable


Whether this deployment has the feature the config targets, cached for the page's lifetime.

The probe is a real request, so pass a **harmless** one — the cheapest read the feature needs is
usually both the honest probe and a call you were going to make anyway (listing one row, say). For a
feature whose only call is a write, use `executeIfAvailable` instead.

Optimistic on anything that isn't a definite "no such thing": wrongly hiding a feature for a whole
page load because of a network blip is worse than showing one error message.


## Installation

```tsx
import { isFeatureAvailable } from 'uxp/components';
```

## Signature

```tsx
function isFeatureAvailable(context: IContextProvider, config: ExecuteConfig, options?: FeatureOptions): Promise<boolean>
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
- [ExecuteConfig](../types/ExecuteConfig.md)
- [ExecuteActionConfig](../types/ExecuteActionConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [ExecuteServiceConfig](../types/ExecuteServiceConfig.md)
- [ExecuteAPIConfig](../types/ExecuteAPIConfig.md)
- [ExecuteQueryConfig](../types/ExecuteQueryConfig.md)
- [ExecuteCollectionConfig](../types/ExecuteCollectionConfig.md)
- [FeatureOptions](../types/FeatureOptions.md)

