# useUXPContext


A custom React hook that retrieves the UXPContext, throwing an error if used outside a UXPContextProvider.



## Installation

```tsx
import { useUXPContext } from 'uxp/components';
```

## Signature

```tsx
function useUXPContext(): IContextProvider
```

## Examples

```tsx
import { UXPContext } from './Context';
import { useUXPContext } from './useUXPContext';

const MyComponent = () => {
  const context = useUXPContext();
  return <div>{context.$L('hello')}</div>;
};
```

```tsx
import { UXPContext } from './Context';
import { useUXPContext } from './useUXPContext';

const MyComponent = () => {
  const { $L, direction } = useUXPContext();
  return (
    <div style={{ direction: direction }}>
      <p>{ $L('welcome_message') }</p>
    </div>
  );
};
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

