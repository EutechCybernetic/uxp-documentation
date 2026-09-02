# executeIfAvailable


Run a call that may not exist on this server, and stop calling once it is known not to.

For features that cannot be probed harmlessly because the call *is* the feature — recording an
event, say. The first call is the real one; if the server answers that it has no such thing, the
feature is latched off and later calls resolve `null` without a request. Resolves `null` when the
call was skipped, so `null` means "not attempted", not "failed".

The latch matters on the server too: an old deployment logs an exception for every rejected batch
item, so an unguarded fire-and-forget call fills its subsystem log with the user's browsing.


## Installation

```tsx
import { executeIfAvailable } from 'uxp/components';
```

## Signature

```tsx
function executeIfAvailable(context: IContextProvider, config: ExecuteConfig, options?: FeatureOptions): Promise<ExecutionResult<T> | null>
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

