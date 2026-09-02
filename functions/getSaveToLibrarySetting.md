# getSaveToLibrarySetting


The account setting for recording uploads. Default is ON: only an explicit
`'0'` turns it off, so an unset key (or an unreachable service) still tracks.


## Installation

```tsx
import { getSaveToLibrarySetting } from 'uxp/components';
```

## Signature

```tsx
function getSaveToLibrarySetting(context: IContextProvider): Promise<boolean>
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

