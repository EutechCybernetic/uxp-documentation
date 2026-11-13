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

- **Details title tint ([LPVR-1169](https://eutech.atlassian.net/browse/LPVR-1169)):** the tint over the image in a details panel title, and the text on it, come from two new theme colors: **Details Header Background** and **Details Header Text**. They are in the theme editor under **Portal & Navigation**. The tint was a fixed navy. Light themes default to that navy. Dark themes default to their own dark color. Themes saved before this change keep the old navy and the header text color. The tab bar below the title uses the same two colors. Themes saved before this change keep the primary button colors there. Inactive tabs are dimmed. The active tab is full strength and underlined. Check it on any record with an image, for example a location in **Locations > Portfolios**, with more than one theme. Change the two colors in a custom theme and check the title and tab bar follow.
- **Notification template object types ([LPVR-892](https://eutech.atlassian.net/browse/LPVR-892)):** the **Object Type** list in **Administration > Notifications > Templates** shows only the types apps declare in `Configuration.xml`, plus types that already have templates. It listed every model of every app, with duplicates. The User app declares `User`. Check the create form and the list filter. See [Notification Template Object Types](../../v5/notification-object-types.md).
