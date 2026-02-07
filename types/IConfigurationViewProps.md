# IConfigurationViewProps


ConfigurationView component props


## Definition

```tsx
interface IConfigurationViewProps {
    uxpContext: IContextProvider;

    /** Settings panel title */
    title: string;

    /** Configuration sections with sidebar links and content */
    sections: IConfigurationViewSection[];

    /** Selected section id (controlled mode) */
    selected?: string;

    /** Callback when section changes, receives section id */
    onChangeSection?: (id: string) => void;
}
```

## Usage

```tsx
import { IConfigurationViewProps } from 'uxp/components';
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
- [IConfigurationViewSection](../types/IConfigurationViewSection.md)

