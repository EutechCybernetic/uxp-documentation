# Custom Detail Tabs

Admins can add their own tabs to a details panel. A tab shows one widget or app UI picked from the widget drawer. Admins can also delete these tabs and drag all detail tabs into a new order.

- **Ticket:** [LPVR-1309](https://eutech.atlassian.net/browse/LPVR-1309).
- **Where:** the Page Editor (edit button at the bottom right) on a page whose details panel supports detail tabs, for example a location in **Locations > Portfolios**. Open **Detail Tabs** in the editor's left list.
- **Needs:** no core change. It works on 5.1.x and 5.2.0 cores.

# What Changed

- **Add tab:** a new **Add tab** button in the Detail Tabs editor. The form asks for a name, an icon and the content. **Select** opens the widget drawer with installed widgets and UIs. App roles, user groups and the "not authorised" option work as for other tabs.
- **Added tabs:** show in the list with an **Added** chip. They show in the details panel's side strip like other detail tabs.
- **Delete:** added tabs have a delete button, with a confirmation. App tabs cannot be deleted. They can still be turned off.
- **Edit:** the pencil on an added tab opens the same form. Changing the content to a different widget starts it with no settings.
- **Reorder:** drag rows to change the tab order. The details panel follows the same order.
- **Turning an app tab back on:** the tab keeps its place in the order.
- **Empty list:** a page with no detail tabs shows "No tabs yet" and the **Add tab** button.

# Testing Focus

- **Add:** add a tab with a name, icon and widget. It shows in the editor list and in the details panel. Its widget loads for the open record.
- **Reload:** after a reload the tab is still there, for every user allowed to see it.
- **Access:** limit an added tab to one user group. A user outside it does not see the tab, or sees "not authorised" when that option is on.
- **Edit:** change the name, icon and widget. The details panel follows.
- **Delete:** delete the added tab. It is gone from the editor and the panel. App tabs on the same page are not affected.
- **Reorder:** drag tabs into a new order. The details panel shows the same order after a reload.
- **Regression:** turn an app tab off and on, edit it, and reset it. These work as before.
