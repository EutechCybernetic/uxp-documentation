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
- **Notification template object types ([LPVR-892](https://eutech.atlassian.net/browse/LPVR-892)):** the **Object Type** list in **Administration > Notifications > Templates** shows only the types apps declare in `Configuration.xml`, plus types that already have templates. It listed every model of every app, with duplicates. The User app declares `User`. Check the create form and the list filter. See [Notification Template Object Types](../../v5/notification-object-types.md).
