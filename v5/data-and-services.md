# Data & Services

Everything a screen does with the backend: fetching data and holding its loading state, staying in sync
when something changes, and raising notifications a user sees in the notification center.

| Page | What is in it |
|---|---|
| [Data Fetching](./data-fetching.md) | Declare every call an app makes as a service config in `services.ts`, then run it with `useExecuteRequest`, `executeConfig` or `useExecuteRequestCallback` — with loading and error state, debouncing and polling handled for you |
| [Events and Synchronization](./events.md) | The in-browser event bus for components on a page, and `useMessageBus` for updates pushed from the server |
| [In-App Notifications](./notifications.md) | `UpsertNotification` and `ResolveNotifications`, the context wrappers, and how to build a stable `notificationId` |

## The layer underneath

Service configs are a wrapper around the context's own methods. When you need the primitives — in a small
widget, or a standalone bundle with no `services.ts` — call them directly:

- [Talking to Lucy](../uxp/lucy.md): `executeAction`, `executeService`, the `Safe` variants and paged
  collections
- [The context](../uxp/context.md): every method the context exposes, including the notification wrappers
- [Real-time messaging](../uxp/messagebus.md): channels, naming them safely, and polling with a real-time
  hint

Prefer the `Safe` variants in new code: a failed call becomes a branch rather than a `try`/`catch`.

## Where to go next

- [Best Practices](./best-practices.md) has a data-fetching section with the patterns to follow
- [Interface guidelines](../uxp/interface-guidelines.md) covers the list and table components that take a
  paging function rather than a loaded array
