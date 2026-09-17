# The context

Every component gets a context object. It is how you reach the backend, find out who the current user is,
check permissions, translate strings and raise notifications.

It arrives as the `uxpContext` prop:

```tsx
interface MyProps {
    uxpContext?: IContextProvider;
}
```

Inside a component that is not registered itself (a shared component in your own project, for example) you
can read it from the hook instead:

```tsx
import { useUXPContext } from 'uxp/components';

const context = useUXPContext();
```

The full interface is `IContextProvider` (`src/types.ts:801-946`). The generated reference page is
[IContextProvider](../types/IContextProvider.md).

## Data

| Method | What it does |
|---|---|
| `executeAction(model, action, parameters, options?)` | Run a Lucy model action. Resolves with the result, rejects on error |
| `executeService(app, service, parameters, options?)` | Run an app service. Resolves with the result, rejects on error |
| `executeActionSafe<T>(model, action, parameters, options?)` | Same as `executeAction`, but resolves with `{ data, error, errorMessage }` instead of throwing |
| `executeServiceSafe<T>(app, service, parameters, options?)` | Same as `executeService`, returning a result object |
| `executeModelCollectionServiceSafe<T>(model, collection, parameters, options?)` | Call a service on a model collection, returning a result object |
| `executeQuerySafe<T>(params)` | Run a Lucy query by key, id or name, returning a result object |
| `executeMicroServiceSafe<T>(config, options?)` | Call a microservice REST endpoint. Supports caching |
| `executeAPISafe<T>(config, options?)` | Call any HTTP API. Normalizes the URL, adds the authorization header, supports caching |
| `fromLucyDataCollection(model, collection)` | Returns a paging function of the shape `DataList`, `DataTable` and `DynamicList` accept |

Prefer the `Safe` variants. They never throw, so a failed call is a branch rather than a `try`/`catch`, and
the error message is already extracted for you. See [Talking to Lucy](./lucy.md).

## Identity and permissions

| Method | What it does |
|---|---|
| `getUserDetails(updateContext?)` | Resolves with the current user's details |
| `hasApp(appName)` | Whether an app is enabled in this account |
| `hasAppRole(app, role)` | Whether the current user holds an app role |
| `hasModelRole(model, role)` | Whether the current user holds a model role |

These are for shaping the UI: hide an action the user cannot perform. They are not a security boundary. Any
data behind an action must still be protected by role checks in the service or model action it calls.

## Localization

| Method | What it does |
|---|---|
| `$L(code, params?)` | Returns the string for `code` in the active language, substituting `params` |

Every user-visible string should go through `$L`. See [Localization](../v5/localization.md).

## Notifications

| Method | What it does |
|---|---|
| `publishNotification(params)` | Create an in-app notification, or update it if that notification id already exists |
| `resolveNotification(notificationId, objectType)` | Mark one notification resolved |
| `resolveNotifications(filters)` | Resolve every NEW notification matching ids, object type and/or object key |

The notification center refreshes itself over the message bus, so there is nothing to poll. See
[Notifications](../v5/notifications.md).

## Other

| Method | What it does |
|---|---|
| `clearFrontendCache()` | Clear this browser's client-side caches, so the next calls go to the server |
| `refreshViewOverrides()` | Reload the account's pluggable view overrides |
| `refreshObjectTabs()` | Reload the injected object-detail tabs |
| `objectTabs` | The injected tabs currently in effect, keyed by object type |

## Data on the context

The context is also a bag of values about the session and the account.

| Field | What it is |
|---|---|
| `apiKey` | The session's API key. Used when you call an endpoint yourself |
| `lucyUrl` | The account's Lucy URL |
| `fullAccountUrl` | The account's full URL |
| `userKey`, `userDetails` | The current user |
| `appRoles`, `enabledApps` | What this user and account have |
| `language`, `enabledLanguages`, `direction` | Language state, and `'rtl'` when the active language is right to left |
| `themeName`, `theme`, `themeType` | The active theme |
| `navigationLinks`, `routes`, `configuredPages` | The navigation and route tables the shell resolved for this user |
| `maxFileUploadSize` | The account's single-request upload limit, in MB. 0 means no limit |
| `isPublicSession` | `true` when the page was loaded without a real user session |

Read `navigationLinks` and `routes` when you need to reason about what exists. To move the user, use
`useRouterContext()`, not the context: navigation is the router's job. See
[Building UI views](./ui-views.md).
