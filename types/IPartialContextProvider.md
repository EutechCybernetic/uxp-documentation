# IPartialContextProvider

## Definition

```tsx
export interface IPartialContextProvider {
    environment: string,
    root: string,

    fullAccountUrl: string;
    lucyUrl: string;
    apiKey: string;
    onAPIKeyChange?: (newApiKey: string) => void,

    language?: string
    enabledLanguages?: Language[]

    themeName?: string,
    customThemes?: ICustomThemes,
    theme?: IThemeProps,
    setTheme?: (name: string, config: IThemeProps, type: ThemeType) => void
    themeType?: ThemeType

    authConfig?: any  // Auth page configuration (layout, colors, etc)

    userKey: string;
    /** True when the page was loaded without a real user session (public page). Immutable — not affected by setPublicCredentials. */
    isPublicSession?: boolean;
    loginType?: string,
    appRoles?: { [app: string]: string[] }
    enabledApps?: string[]
    userDetails?: UserDetails;
    userSiteTimeZoneName?: string,
    userTimezoneCode?: string,
    userSiteTimeZoneOffsetInSeconds?: number,
    userSiteKey?: string,
    userSiteName?: string,
    userSiteImageKey?: string,
    userDataFormat?: string,
    userTimeFormat?: string,
    userCurrencyFormat?: string,
    accountDisplayName?: string;
    useGoogleTranslate?: boolean
    hasTOS?: boolean
    tosAgreed?: boolean
    agreementAgreed?: boolean
    hasAgreement?: boolean

    scriptFiles: Record<string, string[]>,
    navigationLinks: NavigationLink[],
    routes: Routes,
    configuredPages: ConfiguredPage[]

    isLoading?: boolean,
    loadingMessage?: string
    setLoading?: (isLoading: boolean, message?: string) => void

    marketplaceUrl?: string,
    loadWidgetsFromIviva?: boolean
    widgetSearchAPI?: string

    maxFileUploadSize?: number

    // this is to track analytics
    trackAnalytics?: (event: string, data?: { [key: string]: any }) => void,

    // this will be used by uxp-report-engine
    loaded?: (instanceId: string, uxpFunctions?: IUXPFunctions) => void,

    spacingMode?: any
    title?: string

    // view overrides for pluggable views
    viewOverrides?: Record<string, ViewOverride>
    setViewOverrides?: (overrides: Record<string, ViewOverride>) => void
}
```

## Usage

```tsx
import { IPartialContextProvider } from 'uxp/components';
```

## Related Types

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

