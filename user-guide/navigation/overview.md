# How navigation works

Navigation is the sidebar your users see and the URLs behind it, and you configure all of it under **Administration > Navigation**.

## Where links come from

Every app installed on your account ships a set of default links: a label, an icon, the page the link opens, and the user groups or app roles allowed to see it. Those defaults are a starting point, not the final word.

1. Each app defines its default links in its own configuration file.
2. You sync those defaults into **Master Links**, the single list of every link on the account.
3. A **navigation profile** picks links from that list and arranges them for one or more user groups.
4. Each user sees the links their profile lists and their own permissions allow.

Profiles always pull from the master list. They never create links of their own, and they never change what a user is allowed to open.

## Before and after the first sync

Until you run the first sync, the master list is empty and navigation is served straight from the apps' own files. Users still get a full sidebar and every URL still works, but there is nothing to edit: the list is empty.

The first sync copies the apps' links, with their permissions, into Master Links. From then on the master list is what users see, and an app's file only reaches navigation when you sync again. This is also why installing or updating an app does not change the sidebar on its own: run a sync to pick up its links.

## The sidebar and the header row

The navigation tree is deeper than the sidebar:

- Levels 1 to 3 appear in the sidebar.
- Levels 4 and 5 move to the header row at the top of the page, and appear when the user is inside that level 3 section.

Keep the tree within those five levels, and put what users reach most often near the top. A link with no page of its own is a group. Clicking a group opens the first child the user can see, and a group with nothing visible under it is hidden for that user.

## Routes: how a URL finds a page

Every link with a page also defines a route: the URL, the page that renders at it, and who may open it. Routes also come from the apps themselves (detail pages and redirects that are never in the menu) and from any **custom routes** you add. A link with a page always wins over the other two on the same URL.

When a user opens a URL, one of three things happens:

- The URL matches a route the user may open, and the page renders.
- The URL matches a route the user may not open, and an **Access denied** page appears. The URL exists, but this user's groups or roles do not allow it.
- The URL matches no route at all, and a **404 (not found)** page appears. Nothing is configured at that address, so check the spelling of the link or the route.

Dashboards are the exception: `/dashboard/...` URLs are not routes. A dashboard is checked when it is opened, against its own public flag and allowed user groups.

## Where each thing is configured

| Screen | What you do there |
|---|---|
| Administration > Navigation > **Master Links** | Sync links from the apps, add your own, edit, reorder, set permissions |
| Administration > Navigation > **Profiles** | Give a user group its own selection, grouping and order of those links |
| Administration > Navigation > **Custom Routes** | Serve a URL that is not in the menu, or take over a URL an app defines |

Both navigation screens carry a **Clear** button (the eraser icon) that clears the cached navigation on all servers, and a help popover with a short summary of the same rules.

## Glossary

- **Master link** A single entry in the master list: one label, icon, destination and set of permissions. Everything else refers back to it.
- **Profile** A curated subset of master links, arranged in its own hierarchy and assigned to one or more user groups.
- **Custom route** A URL you define yourself, pointing at a page, for addresses that are not navigation links.
- **Protected link** A link an app marks as system-managed. You can restrict who sees it, but you cannot rename, move or delete it.
- **Public link** A link open to everyone, including visitors with no login. Public is never inherited by the links under it.
- **Page** The screen an app registers. A link or a route points at a page; the page may carry roles of its own that nothing in these screens can override.
