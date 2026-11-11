# v5.2.0

New features on top of [v5.1.2](../v5.1.2/README.md); everything there still applies.

## Contents

- [Phones and Tablets](phones-and-tablets.md)
- [Media Library: Folders, Tags and Sharing](media-library.md)
- [App Lists: Info Cards and Row Actions](system-app-lists.md)
- [Lists: Infinite Scroll, Header and Paging Options](list-components.md)
- [Header Items: Buttons Before the Bell](header-items.md)
- [Custom Detail Tabs](custom-detail-tabs.md)

## Fixes

- **Details title tint ([LPVR-1169](https://eutech.atlassian.net/browse/LPVR-1169)):** the tint over the image in a details panel title uses the theme's header color. It was a fixed navy. The tab bar below the title also uses the header color and header text color. It used the primary button color, so the active tab could be unreadable. Inactive tabs are dimmed. The active tab is full strength and underlined. Check it on any record with an image, for example a location in **Locations > Portfolios**, with more than one theme.
