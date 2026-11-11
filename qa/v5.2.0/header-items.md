# Header Items: Buttons Before the Bell

Apps can add buttons to the header, before the bell. A button opens a page or a sidebar on the right. Admins can reorder, turn off, edit and add these buttons. Pages also tell the shell what the user is looking at, so a sidebar such as Ask AI can use it.

- **Ticket:** [LPVR-1305](https://eutech.atlassian.net/browse/LPVR-1305).
- **Where:** the header on every page. **Administration > Navigation > Header items**. The **Ask AI** button from the AgenticAI app is the first app item.
- **Needs:** core 5.2.0. On an older core no header items show and nothing else changes.

# What Changed

- **Header buttons:** apps declare buttons in their configuration. Each button shows an icon before the bell.
- **Open a page or a sidebar:** a button opens a page, or a sidebar on the right. The open sidebar is kept in the URL, so a reload or a shared link opens it again.
- **Wide sidebar:** on web, a sidebar can switch to a wide mode. On phones a sidebar is full screen.
- **Header widget:** an item can show a small widget in place of its icon. Phones show the icon.
- **Phones:** header items show in the bottom bar, before Notifications.
- **Access:** each item can be limited to user groups and app roles. Users without access do not see it. Public pages show no header items.
- **Header items tab:** a new tab in **Administration > Navigation**.
  - Lists app items and added items in header order.
  - Drag rows to reorder.
  - Turn an item off or on.
  - Edit an app item. It shows as **Modified**. **Revert** brings back the app version.
  - **Add item** adds an item that opens a page or a sidebar, with an optional widget. Added items show as **Added** and can be deleted.
  - Admin changes are stored separately. App items still come from the app, so app updates still reach items an admin has not changed.
- **Page context:** pages tell the shell what the user is looking at. Lists add their search, filters and first rows. The Ask AI sidebar shows this as "Page: …" above the message box.

# Testing Focus

- **Ask AI:** on core 5.2.0 with the AgenticAI app, the sparkle button shows before the bell. It opens the Ask AI sidebar. The close button and a reload both work as expected.
- **Wide mode:** the expand button in the sidebar makes it wide and back.
- **Page context:** open Ask AI on a list, for example **Assets**. It shows the page name and row count. Search the list and the context follows.
- **Phones:** the item shows in the bottom bar and opens a full-screen sidebar.
- **Access:** limit an item to one user group. A user outside it does not see the item.
- **Header items tab:** reorder, turn off, edit, revert, add (page and sidebar), and delete. The header follows each change after a reload.
- **Old core:** on a 5.1.x core the header looks as before, with no new buttons and no errors.
- **Regression:** the bell, profile menu, search and app switcher work as before on web and phones.
