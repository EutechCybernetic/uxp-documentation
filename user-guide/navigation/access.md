# Who can see what

Access is decided by the permissions on each link and route, and this page explains how they combine and why a link is sometimes hidden.

## The three ways to allow someone in

Every link, and every custom route, carries the same three settings:

- **User Groups** The link is allowed for members of these groups.
- **App Roles** The link is allowed for users holding any of these roles.
- **Public access** The link is open to everyone, including visitors who are not logged in.

A level passes when it has no restrictions at all, when it lists one of the user's groups, or when it lists one of the user's roles. Groups and roles are an either/or: matching any one of them is enough. Leave both empty and every logged in user passes.

Public is not inherited. Making a section public does not make the pages under it public, so mark each link that visitors need.

## Every level must pass

A link is visible only when its own permissions pass **and** the permissions of every section above it pass. A section's restrictions cover everything under it, in the sidebar and at the address alike. A user who holds the role granted on a page, but not the role its parent section requires, gets Access denied at that page's address. Restricting a section is therefore the quickest way to hide a whole area, and the reason a page can be denied even though its own permissions look right.

## Permissions the app sets on a page

A page can carry roles of its own, set by the app that provides it. These are a hard gate:

- The link to that page disappears from the sidebar for users without the roles, and a section left with nothing visible disappears with it.
- Every address that serves the page answers Access denied: the link's address, an app's own detail route, and any custom route you point at it.
- They cannot be relaxed from these screens. Widening the link's user groups or app roles makes no difference.

They are not inherited downward: a section whose own page is gated but whose children the user can open stays in the sidebar as a group and opens the first child they can see.

## Protected and locked links

Apps mark parts of the menu as system-managed, and the whole **Administration** area is marked this way. Nodes show a **Protected** chip, a **Locked** chip, or both.

On a protected link you cannot change the label, address, page, type or parent, cannot delete it, and it has no drag handle at all, so it cannot be reordered or moved. The page editor declines to open on its page. The messages say so as you try: *This navigation item is protected and cannot be modified. Only a YML sync changes it.*

On a locked link the access settings and the position are system-managed as well: user groups, app roles and the public flag cannot be changed, and the link can never be made public. Restrict who reaches the area through the app's own roles instead.

Both flags are set once on the section that hosts an app, and everything the app contributes inherits them, including addresses that never appear in the menu. Only a sync changes a protected link: a full sync, a per-app sync from the compare view, or a revert.

What you can still do:

- Add your own link under a protected section. It is an ordinary link: editable, deletable, and it may be public.
- Such a link always sits after the system links in that section. Dragging it above one of them is refused with *Custom links stay after the system links in a protected section*, and a new child lands at the bottom.
- Reorder the top level sections, and drag your own and other apps' links above or below Administration. Only Administration itself has no handle.

## Why a link is hidden

A link disappears from a user's sidebar for one of these reasons, and no other:

| Reason | What to check |
|---|---|
| Its own permissions deny the user | The link's user groups and app roles, at every level above it too |
| Its page's own roles deny the user | The roles the app sets on that page. Nothing here overrides them |
| It has no page, and the address it points at is one the user cannot open | The route serving that address, or the target of a symlink |
| It is a section that can only end in Access denied | The pages under it. A section with some visible children stays as a group |
| It is a group with nothing visible under it | The permissions of its children |
| The user's profile does not list it | The profile, under Navigation > Profiles |

The rule behind the list: a link that would end in Access denied may still be shown, but a link the user could open is never hidden. So if a user reports a missing entry, look for a certain denial first.

## Profiles configure nothing about access

A profile decides what the sidebar shows and in what order, never what a user may open. A link the profile leaves out is still reachable at its address by anyone the permissions allow. To take access away, restrict the master link or the custom route that serves the address.

## Dashboards are checked when they are opened

A dashboard address is not a route, so its own settings decide:

- A public dashboard is open to anyone, including visitors who are not logged in.
- A dashboard with no allowed user groups is open to any logged in user.
- Otherwise only members of those groups may open it, and everyone else gets Access denied. Editors are not exempt.

Sections of a dashboard share the dashboard's access, and a link pointing at a dashboard is checked the same way.
