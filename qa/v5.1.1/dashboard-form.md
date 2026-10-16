# Dashboard Form: ID, Layout Settings and Links

The New Dashboard and Edit Dashboard forms fill the ID from the name, carry the two layout switches, and open the Links tab after create. Navigation paths warn when they are not a clean address.

- **Ticket:** [LPVR-1210](https://eutech.atlassian.net/browse/LPVR-1210).
- **Where:** Dashboards list, **New Dashboard** and **Edit**. Admin **Navigation** links and **Custom Routes**.
- **Who:** users who can manage dashboards, as before.

# Dashboard ID

- **Create:** the ID fills from **Dashboard Name** as you type. "Smart Bldg Été" gives `smart-bldg-ete`.
- **Own ID:** once you type in **Dashboard ID**, it stops following the name. Clear it and it follows again.
- **Edit:** the name never changes the ID. The ID changes only when you type in it.
- **Allowed:** lowercase letters, numbers and hyphens. Anything else is changed as you type: capitals become lowercase, spaces and underscores become `-`, accents are removed.
- **Save:** a `-` at the start or end is removed. A blank ID is made from the name.

# Layout Settings (Details step)

- **Enable user group layouts:** off for a new dashboard.
- **Enable responsive layouts:** on for a new dashboard.
- **Same settings:** these are the switches in Dashboard Settings inside the dashboard. Changing one place shows in the other.
- **Edit:** other dashboard settings, such as overlay mode and background, are kept.

# After Create

- **Links tab:** after **Create**, the form stays open in edit mode on the **Links** tab. Before, it stayed on **Access**.

# Paths in a Dashboard's Links Tab

- **Sections:** Sub Dashboard links, and View or Symlink links added from the Links tab, have the address `/dashboard/<id>/<section>`.
- **Section part:** changed to lowercase letters, numbers and hyphens as you type. A `-` at the end is removed on save.
- **Dashboard part:** the `/dashboard/<id>` in front is never changed.

# Navigation Links and Custom Routes

- **Warning:** a path with capitals, underscores or accents shows a warning under the field, for example `/view/My_Page`. It still saves.
- **Not checked:** the `/view` or `/dashboard` start and `:parameters`.
- **Still refused:** spaces and `( ) [ ] { } + ! * ? #`, as before.
- **One message:** an error hides the warning.
- **When:** the warning shows when the path is changed, or on save. Opening an existing link does not show it.

# Dashboards List: Manage Role

- **Who:** users without `UXP: canmanagedashboards`.
- **Before:** the row menu showed **Edit** and **Delete**, and **New Dashboard** showed. The save or delete then failed.
- **Now:** no row menu and no **New Dashboard**. A link with `?add=1` or `?edit=<key>` shows the list without the form.
- **With the role:** **Edit**, **Export**, **Delete** and **New Dashboard**, as before.

# Widget Saved Without a Position

- **Before:** a dashboard with a widget that had no saved position showed "Aw, snap". Seen after importing an old dashboard file.
- **Now:** the dashboard opens. The widget gets its default size and sits under the other widgets.
- **Saved:** the new position is kept only when the dashboard is saved.
- **Hard to test:** the UI never saves a widget without a position. It needs a hand-made old dashboard file. Development tested it on dev.

# By Design (not bugs)

- Opening an existing link with capitals shows no warning until the path is changed.
- Dashboard IDs saved before this release keep their capitals or underscores until edited.

# Testing Focus

- Create a dashboard with accents, spaces and symbols in the name.
- Type an ID by hand, then change the name.
- Set the two switches on create, then check Dashboard Settings inside the dashboard.
- Edit a dashboard that has overlay mode on: it stays on.
- Sub Dashboard section paths with capitals and spaces.
- A navigation link and a custom route with `/view/My_Page`.
- The Dashboards list as a user without the manage role, and with it.
