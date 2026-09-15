# Widget Designer

The Widgets link opens the widget designer. In v5.0.x the link is hidden; from v5.1.0 it is shown.

- **Widgets List:** **Platform > Experience > Widgets** is a searchable list of widgets with icon avatars. Opening a widget shows the designer full screen, with an unsaved-change guard.
- **Anonymous Access:** "Allow anonymous access" in the designer's Share section controls whether the widget's [standalone page](#standalone-widget-page) can be opened without logging in.
- **Testing Focus:**
  - The **Widgets** link is visible under Platform > Experience and opens the list; search finds a widget by name.
  - Open a widget, change something, and try to leave without saving: the unsaved-change guard asks before discarding.

# Standalone Widget Page

Renders one widget on its own page.

- **URL:** `/view/widget/<name>`. The old v4 URL `/Apps/UXP/page/<name>` redirects here, keeping query parameters.
- **Sizing:** `?embedded=1` fills the frame 100%; otherwise the widget renders at its designed size, centred.
- **Anonymous Access:** Per-widget — "Allow anonymous access" in the widget designer's Share section. When off, anonymous visitors are redirected to login; access fails closed on any error.
- **Testing Focus:** open a widget's page while logged in (with and without `?embedded=1`), open an old `/Apps/UXP/page/<name>?x=1` URL (lands on the new URL with `x=1`), then log out and open it with anonymous access off (login page) and on (widget renders).
