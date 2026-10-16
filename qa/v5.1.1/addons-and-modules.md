# Add-ons and Modules: Protected Add-on Modules, Safe Widget Preview

Bundles installed by an add-on are protected, add-on widgets show their real state, and the widget preview no longer crashes.

- **Ticket:** [LPVR-1238](https://eutech.atlassian.net/browse/LPVR-1238).
- **Where:** **UXP > Settings > Manage Bundles**, and the widget drawer (Dashboard Manager).

# Manage Bundles

- **Add-on bundles:** a bundle installed by an add-on shows an **Add-on** chip and has no delete button. Remove it by uninstalling the add-on.
- **Server check:** deleting an add-on's bundle any other way is refused: "This module belongs to the add-on <name>. Uninstall the add-on instead."
- **Uninstall:** uninstalling the add-on still removes its bundle.
- **Typed confirm:** deleting any other bundle asks to confirm, then to type `delete` (lowercase). Confirm stays off until it matches.
- **Widgets go with the bundle:** deleting a bundle also removes its widgets, so they are no longer listed in the drawer.
- **No restart needed:** the page's list of bundles is refreshed when a bundle is uploaded or deleted. Before, a deleted bundle stayed listed until a server restart.

# Add-on Widgets in the Drawer

- **Installed** now needs the add-on's record, its bundle and the widget. If any is missing, the tile shows **Not Installed**.
- **Before:** an add-on whose bundle was deleted still showed its widgets as Installed.

# Widget Preview

- **Tags:** the server sends a widget's tags as a list. The preview also reads older text tags.
- **A widget that cannot load:** an error message, "Unable to load this widget. Its module may be missing." No preview opens. Before, the page crashed ("Aw, snap!").
- **A widget that fails while drawing:** the error stays inside the preview box.
- **Button:** "Select" when the drawer is picking one item (a page for a navigation link, the page editor). "Add widget" when adding to a dashboard.

# Testing Focus

- Manage Bundles with an installed add-on: chip, no delete. Uninstall the add-on: its bundle goes.
- Delete a normal bundle: wrong text keeps Confirm off; `delete` deletes; its widgets leave the drawer without a restart.
- Widget drawer after deleting an add-on's bundle by other means: its widgets show Not Installed.
- Preview on several widgets, including ones with tags and ones that are not installed.
