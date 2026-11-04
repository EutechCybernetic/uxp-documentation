# Phones and Tablets

v5 screens now work on phones and tablets. On a phone the app has its own shell, and lists, forms and dialogs take phone layouts. Pages that need a larger screen say so. The web must look and work as before.

- **Ticket:** [LPVR-1252](https://eutech.atlassian.net/browse/LPVR-1252).
- **Where:** every v5 screen in the System, Lucy, UXP and User apps, on a phone (about 360 to 430 wide) and a tablet (768 wide and up).

# What Changed

- **App shell on phones:**
  - A compact header and a bottom bar with the menu, notifications and profile.
  - The menu, notifications and profile open as sheets from the bottom.
  - The loading skeleton follows the phone layout: no sidebar, bottom bar, compact header.
  - Public pages (no bottom bar) leave no empty space for one.
- **Lists:**
  - Each row shows as a card. Lists that don't define a card get one built from their columns.
  - Search, paging and buttons move to a bottom toolbar. Filters open as a sheet.
  - Tapping a row opens its details as a full-screen layer with a back row.
  - Swipe a row for its actions. Press and hold a row to start selecting.
- **Configuration tables:** rows show as cards. Adding or editing a row opens a form instead of editing in the table.
- **Configuration pages (Settings, Account Settings and the like):**
  - Phones show the list of sections first. Tapping one opens it, with the section bar at the bottom.
  - The open section is in the URL, so the phone's Back returns to the list.
- **Forms and dialogs:**
  - Forms use one column with the buttons at the bottom.
  - Tabs show as a bottom slider. Wizards show a step line.
  - Modals and slide-in forms open full screen.
  - Alerts, toasts and dropdowns open as bottom sheets.
- **Dashboards:**
  - A dashboard with no phone layout stacks its widgets. Small tiles go two per row, the rest full width.
  - A dashboard with a phone layout uses that layout.
  - Nothing is saved by this.
- **"This page needs a larger screen":**
  - Editors and designers show this notice on phones instead of a broken page. It has no buttons. The phone's Back or the menu leaves it.
  - Pages that show it: the Lucy model designer and catalog designer, the data explorer query builder, the widget designer, the navigation master links and profiles editors, the login page editor, the custom template editor, the notification template form, the role permission form, the bulk import wizard, and the dashboard import and export wizards.
- **Login, Terms of Service and Agreement pages:**
  - The login page and its loading skeleton fit every screen size.
  - Terms of Service and Agreement fill the phone screen with full-width buttons.
  - **Fixed:** the Agreement page showed no text and no tick. It now shows the account's agreement text and the tick.
- **Other screens fitted for phones:**
  - Users, User Groups, Configuration and My Profile in the User app.
  - My Profile: the picture has a camera badge with a menu. Authorized apps rows stack the name over the scope.
  - The Lucy collection grid: a row tap shows its fields. Add Record adds one record at a time as a form.
  - Lucy model details: the information stacks and Collections fills the screen.
  - The OAuth and OIDC client panels, the Lucy connector install panel, the API key token dialog and the localisation sync dialog.
  - Page Views: drill-downs open and close, the KPI row scrolls sideways, the filter controls wrap.
- **Large screens:** sizes are now in rem, so layouts scale with the screen. The model and catalog designer canvases zoom with the screen.
- **Dark theme:** Reports, Navigation profiles, Welcome, Notification categories, Inbox, Data explorer, Queries, the model designer property panel and the roles permission grid now use the theme colours.
- **By Design (not bugs):**
  - Saved views on phones: pick, favourite, rename and delete only. Creating a view and saving filter, sort or column changes are web only.
  - Editing dashboards and pages is web only.
  - Tables on phones have no inline editing, column resize, column choice or drag to reorder rows.
  - A disabled icon button shows no label on press and hold.
  - The navigation tree compare view is web only.

# Testing Focus

- **Web first:** every screen looks and works exactly as before, at common desktop sizes.
- **Phones:** no sideways scroll on any page. Check portrait at 360 and 390 wide, and landscape.
- **Tablets:** 768 × 1024 portrait and landscape.
- **Lists:** the card, filters sheet, details layer and Back, swipe actions and hold to select.
- **Configuration pages:** the section list, opening a section, Back to the list, and opening a section from a shared link.
- **Forms and dialogs:** full-screen modals and slide-in forms, bottom buttons, dropdowns as sheets.
- **Desktop-only pages:** each page listed above shows the notice on a phone and works as before on the web.
- **Dashboards:** one dashboard with a phone layout and one without.
- **Agreement page:** the text and the tick show.
- **Dark theme:** the screens listed above are readable.
- **Known items (filed separately, not part of this release):**
  - Data explorer queries: clicking a row does nothing, and the copy-ID button is gone.
  - Page Views Peak periods at 360 and 390 wide: the count and % run together.
  - Landscape phone lists show only about two rows.
  - At 360 wide, long filter names are cut.
  - In dark mode, the Page Views top pages bars and the document type tiles are hard to read.
  - The bulk import labels overlap.
