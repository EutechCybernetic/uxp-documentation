# Navigation Tags and Public Users

Two changes: navigation links can carry tags such as Beta, and public pages can run as a chosen user.

- **Tickets:** [LPVR-1233](https://eutech.atlassian.net/browse/LPVR-1233) (tags), [LPVR-1234](https://eutech.atlassian.net/browse/LPVR-1234) (public user).

# Navigation Link Tags (LPVR-1233)

- **Location:** **Administration > Navigation > Master Links**, the link form's **Tags** field. Also `tags:` on a navigation link in an app's `Configuration.yml` or in `DefaultConfig.yml`.
- **Format:** each tag is a word or `{ label, variant }`. `beta` (any case) is predefined: a "Beta" chip in blue (info). Its colour is fixed, so a colour set on Beta is ignored. Any other word is a grey chip. An object can pick a chip colour: `primary`, `secondary`, `danger`, `warning`, `info`, `success`; an unknown one is grey.
- **Shown:** as small chips next to the link's label in the sidebar, the header navigation, its dropdowns and More menu, and in the Master Links tree (with a tag icon, beside the status chips).
- **Placement:** in sidebar group rows and header menu items, the chips sit right after the text with a small gap, not at the far right. Two or three tags sit side by side. A long label is cut short and its tags stay visible.
- **Known gap:** the Master Links tree still shows Beta in orange. It changes with the next core update.
- **YAML sync:** `sdm <account> syncnavigation` writes the tags. Removing them from YAML removes them on the next sync, unless the link was edited in the UI.
- **Packages:** navigation package export carries the tags. Import writes them the same way as YAML. A package from before this change has no tags and leaves a link's tags alone.
- **Marked Beta:** Digital Twin, Data Explorer and My Media.
- **By Design (not bugs):** the form offers Beta as a suggestion and takes any text; a chip colour other than the default is set from YAML only. Dashboard links (inside a dashboard's Links tab) have no tags.

# Public User for Public Pages (LPVR-1234)

A public page used to run with no user, so its calls had no identity. Only public dashboards had a user.

- **Account public user:** **Administration > Account Settings > General > Public user**. Optional. Public pages and dashboards with no user of their own run as it.
- **Own user:** a public navigation link (link form, **Public user**, shown when **Allow public access** is on) and a public custom route (see below) can have their own user. A public dashboard keeps its own **Public Access User**; it is optional when the account public user is set, and the help text names that user.
- **Which user runs:** the page's or dashboard's own user, else the account public user, else no user (as before).
- **Removing the account public user:** refused while a public link, route or dashboard has no user of its own, with a message giving the count.
- **Who can set it:** choosing a public user (account, link or route) needs the System `canmanage` role. Others get "Only an administrator can …".
- **Keys:** only the user is stored. The user's API key is looked up when a signed-out page is served. A signed-in page never carries it. If a route's own user has no key (revoked), that route stops working for signed-out visitors; it does not fall back to the account user.

# Custom Routes: Public Access

- **Location:** **Administration > Navigation > Custom Routes**.
- **Fixed:** the route form had no Public switch, although a route could be made public through a package import.
- **Now:** the form has **Public Access** and, when on, **Public user** (the same field as on links). User Groups and App Roles are hidden while it is public. The list shows a **Public** chip after a public route.

# Testing Focus

- **Tags:** YAML tags (`beta`, a word, an object with a variant) after a sync; tags added and removed in the link form; package export and import with and without tags.
- **Public user:** signed-out visits to a public link, a public route and a public dashboard with their own user, with only the account user, and with neither.
- **Rules:** removing the account public user while something relies on it; a user without System `canmanage` trying to set a public user.
- **Regression:** signed-in navigation and pages behave as before; existing public dashboards with their own user are unchanged.
- **Deploy note:** after deploying, run the localization sync so the new texts show.
