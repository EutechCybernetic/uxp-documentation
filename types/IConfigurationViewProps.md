# IConfigurationViewProps


ConfigurationView component props


## Definition

```tsx
interface IConfigurationViewProps {
    uxpContext: IContextProvider;

    /**
     * Settings panel title — used in `multiple` mode outer header
     * @example "Settings"
     */
    title?: string;

    /**
     * Configuration sections with sidebar links and content
     * @example Two sections
     * ```tsx
     * sections={[
     *     { id: 'general', title: 'General', content: <div>Account name, time zone and currency.</div> },
     *     { id: 'notifications', title: 'Notifications', content: <div>Email and SMS alerts.</div> },
     * ]}
     * ```
     */
    sections: IConfigurationViewSection[];

    /** Action buttons rendered on the right of the outer header (`multiple` mode) */
    actions?: React.ReactNode;

    /**
     * Selected section id (controlled mode). Pass the URL's value as is: undefined shows the
     * first section on the web and the list of sections on phones.
     * @example "general"
     */
    selected?: string;

    /**
     * Callback when section changes, receives section id
     * @example Log
     * ```tsx
     * onChangeSection={(id) => console.log('section', id)}
     * ```
     */
    onChangeSection?: (id: string) => void;

    /**
     * Phones: called by the Close bar of an open section, to go back to the list.
     * Clear the section from the URL here (controlled mode).
     * @example Log
     * ```tsx
     * onCloseSection={() => console.log('back to the list')}
     * ```
     */
    onCloseSection?: () => void;

    /**
     * Layout mode:
     * - `'multiple'` (default) — sidebar navigation with multiple sections
     * - `'single'` — no sidebar; first section fills the page. The section's
     *   `title` becomes the page-level header and its `actions` render on the
     *   right. Use `hideHeader: true` on the section to skip the header entirely.
     */
    mode?: 'single' | 'multiple';

    /**
     * Keeps the open section in this URL value (e.g. `?section=general`): links and reloads open
     * it, and on phones Close removes it, back to the section list. The view reads and writes it
     * itself, so `selected` and `onCloseSection` are not needed (`onChangeSection` is still called).
     * @example "section"
     */
    urlParam?: string;

    /**
     * With `urlParam`: other URL values that belong to the open section (e.g. its tab); they are
     * cleared when the section changes or closes.
     * @example ["tab"]
     */
    sectionParams?: string[];
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
- [NavigationLinkTag](../types/NavigationLinkTag.md)
- [Routes](../types/Routes.md)
- [UnavailableReason](../types/UnavailableReason.md)
- [ConfiguredPage](../types/ConfiguredPage.md)
- [ComponentType](../types/ComponentType.md)
- [IUXPFunctions](../types/IUXPFunctions.md)
- [ViewOverride](../types/ViewOverride.md)
- [ObjectTab](../types/ObjectTab.md)
- [ObjectTabComponent](../types/ObjectTabComponent.md)
- [HeaderItem](../types/HeaderItem.md)
- [Environment](../types/Environment.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [IDataFunction](../types/IDataFunction.md)
- [QueryParams](../types/QueryParams.md)
- [ExecutionResult](../types/ExecutionResult.md)
- [MicroserviceRequest](../types/MicroserviceRequest.md)
- [LucyQueryResult](../types/LucyQueryResult.md)
- [PublishNotificationParams](../types/PublishNotificationParams.md)
- [NotificationSeverity](../types/NotificationSeverity.md)
- [ResolveNotificationsFilters](../types/ResolveNotificationsFilters.md)
- [IConfigurationViewSection](../types/IConfigurationViewSection.md)

