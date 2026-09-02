# IConfigurationViewProps


ConfigurationView component props


## Definition

```tsx
interface IConfigurationViewProps {
    uxpContext: IContextProvider;

    /** Settings panel title — used in `multiple` mode outer header */
    title?: string;

    /** Configuration sections with sidebar links and content */
    sections: IConfigurationViewSection[];

    /** Action buttons rendered on the right of the outer header (`multiple` mode) */
    actions?: React.ReactNode;

    /** Selected section id (controlled mode) */
    selected?: string;

    /** Callback when section changes, receives section id */
    onChangeSection?: (id: string) => void;

    /**
     * Layout mode:
     * - `'multiple'` (default) — sidebar navigation with multiple sections
     * - `'single'` — no sidebar; first section fills the page. The section's
     *   `title` becomes the page-level header and its `actions` render on the
     *   right. Use `hideHeader: true` on the section to skip the header entirely.
     */
    mode?: 'single' | 'multiple';
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

