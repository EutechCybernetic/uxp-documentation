# Core concepts

How a v5 app is put together: what the shell does, what an app declares in `Configuration.yml`, how
navigation and routes are resolved, and how components are registered and configured.

| Page | What is in it |
|---|---|
| [V5 App Architecture](./architecture.md) | The shell, the folder structure of an app, and how a URL becomes a rendered component |
| [Configuration Reference](./configuration-reference.md) | Every field of `Configuration.yml`: navigation links, `otherRoutes`, route parameters, redirects, permissions, `pageId` format and icons |
| [Navigation Configuration](./navigation.md) | Link types and inference, URL generation, nested links, grouping nodes, permissions, and the YML-versus-database sources |
| [Unified Component Registry](./unified-components.md) | `registerComponent`: one call for widgets, pages and background surfaces, with the full `configs.props` field reference |
| [Core UXP Components](./core-components.md) | What the `uxp/components` library gives you, by category, with the hooks list |
| [Media Picker](./media-picker.md) | `MediaPicker`, `ImagePicker` and `IconPicker`: sources, upload restrictions, the media library and the standalone dialog |

## The one rule to keep in mind

An application screen is a `ui` component registered inside its app, reached through a navigation link.
Build a `widget` only for analytics and reporting content that belongs on a dashboard grid. Both are
registered with the same call; `modes` is what decides. See
[Components and modes](../uxp/components-and-modes.md).

## Where to go next

- [Pages & Dashboards](./pages-and-dashboards.md): the page shapes these concepts produce
- [Data & Services](./data-and-services.md): getting data into them
- [Component reference](../reference.md): the generated API for every component, hook, type and function
