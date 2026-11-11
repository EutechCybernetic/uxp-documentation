# Lists: Infinite Scroll, Header and Paging Options

Lists and tables now come down to two components: the main list (object search) and the configuration table. Both can load more rows as the user scrolls. The older list components are marked as deprecated for developers; nothing changes for users of existing screens.

- **Ticket:** [LPVR-1272](https://eutech.atlassian.net/browse/LPVR-1272).
- **Where:** every v5 list and table. Infinite scroll shows where a screen turns it on, for example **My Media**.

# What Changed

- **Infinite scroll, fixed:** in a list shown as a table, infinite scroll loaded every page at once. Now it loads one page each time the end of the list comes into view. Card mode already worked and still does.
- **Infinite scroll in configuration tables:** configuration tables can now load more rows on scroll too. It works whether the table scrolls on its own or the whole page scrolls.
- **Loading line:** while the next page loads, a "Loading more…" line shows under the rows. If a page fails, it shows "Try again".
- **Count:** with infinite scroll, the count shows "loaded of total", for example "30 of 120".
- **Sorting in configuration tables:** a column marked sortable can now be sorted by clicking its header.
- **Header and paging options:** a list can hide its column header and its paging control. A list with only one unlabeled column hides the header by itself.
- **Empty toolbar rows:** when a list has nothing to show in a toolbar row (no search, paging or buttons), the row is no longer drawn.
- **Feed lists without a total:** a list that loads on scroll and has no total no longer shows a row count. It shows a refresh button instead.
- **Lists in a details panel side tab:** a configuration table inside a tab of the details panel side strip no longer has a second frame padding. It lines up with the tab's own edges, as on phones.
- **Older list components:** DataList, DataTable, TableComponent and CRUDComponent still work exactly as before. Only their code moved, so their look and behavior must not change.

# Testing Focus

- **Infinite scroll in a table:** a list with infinite scroll shown as a table, with more than two pages of rows. On load, one or two pages show. Scrolling to the end loads the next page, one at a time, with "Loading more…" between. The count goes up by one page each time.
- **Refresh:** after scrolling down two pages, press refresh. The list goes back to the first page.
- **Search and filters:** with three pages loaded, search or filter. The list starts again from the first page of the new results.
- **Card mode:** the same list in card mode loads more cards on scroll.
- **Phones:** the same checks on a phone, in table and card mode.
- **Failure:** stop the network after the first page and scroll down. "Try again" shows. Turn the network back on and press it. The page loads.
- **Configuration table:** a configuration table with infinite scroll on, inside a page that scrolls. Scrolling the page to the table's end loads more rows. "+ Add New" still adds a row, and edit and delete still work.
- **Sorting:** a configuration table with a sortable column. Clicking the header sorts the rows, and clicking again reverses them.
- **Feed list:** the **Activity Log** and **Documents** tabs in a details panel side strip, for example on a location. No count shows, and the refresh button reloads the list.
- **Tab list padding:** the same **Activity Log** and **Documents** tabs. The list lines up with the tab edges, with no extra gap.
- **Regression, lists:** **Users**, **User Groups**, **My Media** and the Lucy lists look and page as before: header, search, paging, refresh, details panel, swipe actions on phones.
- **Regression, older components:** screens that use the older components still look and behave as before. For example the **Page Views** monitor widgets, the **Activity Log** and **Documents** tabs, the Lucy model designer side panels, and every **Select** and **Multi Select** dropdown (search, paging on scroll, arrow keys, Enter).
- **Regression, notifications:** the notification center list still loads, pages on scroll and filters.
