# IContextProvider

The context available to each widget or UI. Provides the ability to get information about the environment the widget is running in and communicate with Lucy



## Definition

```tsx
export interface IContextProvider extends Omit<IPartialContextProvider, "environment"> {
    environment: Environment,
    direction?: 'ltr' | 'rtl'

    getUserDetails: (updateContext?: boolean) => Promise<UserDetails>;

    /**
     *
     * localisation wrapper
     */
    $L: (code: string, params?: any) => string
    /**
     * Execute a Lucy model action. Specify the model name, action name and any parameters as a dictionary.
     * The result of the execution is returned as a promise
     */
    executeAction: (model: string, action: string, parameters: any, options?: ExecutionOptions) => Promise<any>;

    /**
     * Execute a service. Specify the app name, service name and any parameters as a dictionary.
     * The result of the execution is returned as a promise
     */
    executeService: (app: string, service: string, parameters: any, options?: ExecutionOptions) => Promise<any>;
    /**
     * This will return a function that can be passed into DataList, DataTable, DynamicList
     * (max: number, lastPageToken: string, args?: any) => Promise<{ items: Array<any>, pageToken: string }>
     * this function will return a paginated set of documents for the given filter in args
     *
     * pass the Lucy modal name & collection name
     */
    fromLucyDataCollection(model: string, collection: string): IDataFunction

    /**
     * @deprecated Use executeMicroServiceSafe instead. Kept for backward compatibility.
     * Execute a component REST API call (throws on error)
     */
    executeComponent: (component: string, route: string, method: 'get' | 'post' | 'put' | 'patch' | 'delete', params: any, body?: any, additionalHeaders?: { [key: string]: string }, additionalConfigurations?: any) => Promise<any>;

    /**
     * Execute a Lucy query by key, id, or name (legacy version - throws on error)
     */
    executeQuery: (params: QueryParams) => Promise<any>;

    /**
     * Execute a Lucy model action (safe version - returns ExecutionResult)
     * No need for try/catch - check result.error instead
     */
    executeActionSafe: <T = any>(model: string, action: string, parameters: any, options?: ExecutionOptions) => Promise<ExecutionResult<T>>;

    /**
     * Execute a service (safe version - returns ExecutionResult)
     * No need for try/catch - check result.error instead
     */
    executeServiceSafe: <T = any>(app: string, service: string, parameters: any, options?: ExecutionOptions) => Promise<ExecutionResult<T>>;

    /**
     * Execute a model collection service (safe version - returns ExecutionResult)
     * No need for try/catch - check result.error instead
     */
    executeModelCollectionServiceSafe: <T = any>(model: string, collection: string, parameters: any, options?: ExecutionOptions) => Promise<ExecutionResult<T>>;

    /**
     * Execute a microservice REST API call. Supports caching.
     * Returns ExecutionResult - no need for try/catch
     */
    executeMicroServiceSafe: <T = any>(config: ExecuteMicroserviceConfig, options?: CachingOptions) => Promise<ExecutionResult<T>>;

    /**
     * Execute a Lucy query by key, id, or name (safe version - returns ExecutionResult)
     * No need for try/catch - check result.error instead
     */
    executeQuerySafe: <T = any>(params: QueryParams) => Promise<ExecutionResult<LucyQueryResult<T>>>;

    /**
     * Generic HTTP API executor with caching support
     * Automatically normalizes URLs and adds authorization headers
     * No need for try/catch - check result.error instead
     */
    executeAPISafe: <T = any>(config: any, options?: CachingOptions) => Promise<ExecutionResult<T>>;

    /**
     * Checks if an app is enabled/installed in the account. Equivalent to #{appexists.AppName} in v4 FormEngine.
     */
    hasApp: (appName: string) => boolean;
    /**
     * Checks if the current user has to required app role. Use this to check permissions when executing or rendering content
     */
    hasAppRole: (app: string, role: string) => boolean;
    /**
     * Checks if the current user has to required model role. Use this to check permissions when executing or rendering content
     */
    hasModelRole: (model: string, role: string) => boolean;

    /**
     * Update the API key and trigger parent re-render via onAPIKeyChange callback
     */
    updateAPIKey: (token: string) => void;

    /**
     * Swap credentials to a public user's apiKey/userKey (used by public dashboards so widgets
     * make service calls on behalf of the public user rather than the anonymous visitor).
     * Call with empty strings to restore anonymous state.
     */
    setPublicCredentials: (apiKey: string, userKey: string) => void;

    /**
     * Set the login UI ref for auth helper modal
     */
    setLoginUIRef: (ref: React.MutableRefObject<{ show: () => void }>) => void;

    refreshViewOverrides: () => Promise<void>
}
```

## Usage

```tsx
import { IContextProvider } from 'uxp/components';
```

## Related Types

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

