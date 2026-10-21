# Lists: Refresh Button

v5 lists have a refresh button next to the pagination. Before, a list reloaded only on a page refresh or a filter or view change.

- **Ticket:** [LPVR-1245](https://eutech.atlassian.net/browse/LPVR-1245).
- **Where:** every v5 list and table that loads its own rows. For example **Users**.

# What It Does

- **Place:** before the page count. Refresh, then "Showing 1 - 10 of 120", then the arrows.
- **Reload:** loads the current page and the total again. Page, search and filters stay.
- **Advanced query:** with an advanced or predefined query active, it runs the query again.
- **No pagination:** tables with pagination turned off show the refresh button alone.
- **Fixed rows:** tables given a fixed set of rows by the page show no refresh button.
- **While loading:** the button is disabled.

# Testing Focus

- A list on page 2 with a search and a filter: change a row in another tab, then refresh. The change shows. Page, search and filters stay.
- Add a record in another tab, then refresh. The total goes up.
- A list with an advanced query active.
- A table with pagination turned off.
- Lists inside details panels and forms.
