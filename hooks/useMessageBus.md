# useMessageBus

This hook is used to subscribe to a channel on the message bus.
The hook takes care of initialization and unsubscribing after the component unmounts



## Installation

```tsx
import { useMessageBus } from 'uxp/components';
```

## Signature

```tsx
function useMessageBus(context: any, channel: any, callback: any): MessageBusHook
```

## Examples

```tsx
useMessageBus(props.uxpContext, "visitor-arrival", (payload, channel) => {
     getVisitorArrivals();
     Toast.info("Your visitor is here")
     return "updated"
})
```

## Related Types

- [MessageBusHook](../types/MessageBusHook.md)
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

