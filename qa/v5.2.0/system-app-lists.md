# App Lists: Info Cards and Row Actions

The lists in the System, Lucy, UXP and User apps now use the standard list components. They share one card style, and row buttons moved into row actions.

- **Tickets:** [LPVR-1252](https://eutech.atlassian.net/browse/LPVR-1252), [LPVR-1272](https://eutech.atlassian.net/browse/LPVR-1272).
- **Where:** the lists in the System, Lucy, UXP and User apps. Examples: Reports, Queries, Widgets, Dashboards, Users, User Groups, Models and Connectors.

# What Changed

- **Info cards:** Queries, Widgets, Dashboards, Users and User Groups use the same info card as Models and Connectors, on the web and on phones.
- **Row actions:**
  - Action buttons in their own column are replaced by row actions.
  - On the web, the actions sit in a row menu (…) shown on hover.
  - On phones, swipe a row for its actions.
- **Row tap:** tapping a row opens its details. It never opens an editor.
- **Older list components:** System app screens that used DataList, DataTable or TableComponent now use the standard configuration table. See [Lists](list-components.md).
- **Activity log:** each change shows the field, with the old and new value (old → new).
- **Copy buttons:** message bodies (System) and query IDs (Lucy) have a copy button. It shows on hover with a mouse and always on touch.
- **Widgets:** tapping a widget opens the widget page. It fills the phone width.
- **Lucy MQTT subscriptions:** the columns are no longer sortable.
  - **Fixed:** sorting by a column loaded every row at once and froze the page.

# Testing Focus

- **Row actions:** every action that was a button before is in the row menu and works. Check Reports (Edit, Generate, Schedule, Export and the rest).
- **Row tap:** opens details in every list. Nothing opens an editor by itself.
- **Cards:** the same look in the lists above, web and phone.
- **Activity log:** edit a record and check the old → new values.
- **MQTT subscriptions:** a large list pages normally. Column headers don't sort.
