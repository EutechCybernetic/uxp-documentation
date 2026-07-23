# Navigation Configuration

The complete reference for configuring v5 navigation — every YAML option, how links become
URLs, permissions and access guardrails, the sidebar/header split, and how navigation is synced
and customized per user group.

> New to navigation? Start with [Add Navigation and Validate](./first-navigation.md), then come
> back here for the full option set.

---

## Overview — two sources

Navigation has **two sources**:

1. **YAML files** (author-time, ship with the app):
   - `DefaultConfig.yml` (in the **System** app) — the account-wide **master menu**: top-level
     groups, ordering, and system links.
   - Each app's **`Configuration.yml`** — that app's `navigationLinks`, spliced into the master
     menu (see [`replaceChildrenWith`](#grouping-nodes--replacechildrenwith)).
2. **Database** (`AccountNavigationLinks` table) — the **runtime source of truth** once populated.
   The first time nav is synced, the merged YML tree is flattened into this table. From then on the
   DB wins: edits made in the Navigation Config UI persist there, and YML is only re-applied when you
   explicitly [sync](#db-as-source-of-truth--syncing).

Author navigation in YML. Customize it per-account in the UI. See
[DB as source of truth](#db-as-source-of-truth--syncing) for how the two reconcile.

---

## The navigation link — full field reference

A `navigationLinks` entry supports these fields. YAML keys are **case-sensitive** and match the
names below exactly. Only `protected` and `lockAccess` are aliases; everything else is verbatim.

| YAML key | Type | Required | Default | Meaning |
|---|---|---|---|---|
| `label` | string | Yes* | `""` | Display text. |
| `link` | string | — | `null` | Relative URL. Empty/`null` ⇒ a [grouping node](#grouping-nodes--replacechildrenwith). Combined with `baseRoute` into a full URL. |
| `pageId` | string | For rendered links | `null` | Component to render, `ui/<id>` or `widget/<id>`. Not needed for groupings/external links. |
| `icon` | string | — | `""` | Icon class, e.g. `fas building` or `phl building` (FontAwesome or Phosphor). |
| `type` | string | — | inferred | `view` \| `dashboard` \| `externalLink` \| `embeddedDashboard` \| `dynamic`. Usually [inferred](#link-types-type--inference). |
| `userGroups` | string[] | — | `[]` | User-group keys allowed to see the link. Empty = everyone. |
| `appRoles` | string[] | — | `[]` | Qualified `App:role` strings required, e.g. `System:canopenapp`. Empty = everyone. |
| `isPublic` | bool | — | `null` | Visible/reachable **without a session**. **Not inherited** — set on each link. |
| `children` | link[] | — | — | Nested links. |
| `id` | string | — | auto | Stable node id. Omit and it's [derived deterministically](#ids--sync-churn). |
| `priority` | int | — | assigned | Ordering. Normally assigned automatically during sync. |
| `replaceChildrenWith` | string | — | `null` | App id whose `navigationLinks` are spliced in as this node's children. |
| `metadata` | object | — | `null` | Free-form. Used by [`type: dynamic`](#type-dynamic-advanced) to hold the `dynamic.execute` config. |
| `configuredProps` | object | — | `null` | Props passed to the rendered component. |
| `protected` | bool | — | `null` | Link cannot be deleted from the master list; **cascades** to descendants. See [guardrails](#permissions--access-guardrails). |
| `lockAccess` | bool | — | `null` | Access is **system-managed** (never public, roles/groups read-only); **cascades**. See [guardrails](#permissions--access-guardrails). |

\* `label` is required in practice for anything user-visible.

> **Not link fields:** `title`, `redirectTo`, and `parameters` belong to **`otherRoutes`**, not to
> navigation links. See [otherRoutes](#otherroutes-reference).

### Basic link

```yaml
navigationLinks:
  - label: Portfolios
    icon: fas building
    link: /portfolios
    pageId: ui/portfolio-view
    userGroups: []
    appRoles: []
    children: []
```

---

## Link types (`type`) + inference

Every link resolves to a **type**, which decides how its URL is built and where it renders. You can
set `type` explicitly, but it is usually inferred from `link`:

1. **Explicit** `type:` → used as-is.
2. `link` starts with `http://` or `https://` → **`externalLink`** (opens the URL directly).
3. `link` starts with `/dashboard/` → **`dashboard`**.
4. `link` is empty/`null` → **grouping node** (type `null`, no URL — just a menu header).
5. Otherwise → **`view`** (the default type).

| Type | URL behavior | Use for |
|---|---|---|
| `view` | `/view/<baseRoute>/<link>` | Normal app pages (default). |
| `dashboard` | Absolute `/dashboard/…`; **ignores** `baseRoute` | Dashboard pages. |
| `externalLink` | URL used raw, no prefix | Links out to another site. |
| `embeddedDashboard` | Served under `/view/…` | Dashboards embedded inside a view. |
| `dynamic` | No static URL — children fetched at runtime | [Service-driven submenus](#type-dynamic-advanced). |
| grouping (`link: null`) | No URL | Menu headers / parents only. |

---

## URL generation

Views combine `baseRoute` + `link`; dashboards are absolute:

```yaml
# In an app whose Configuration.yml has: baseRoute: /location
navigationLinks:
  - label: Portfolios
    link: /portfolios          # ⇒ /view/location/portfolios
```

- **Views:** `/view` + `baseRoute` + `link`. A `link: /` yields `/view/<baseRoute>`.
- **Dashboards** ignore `baseRoute`: `type: dashboard`, `link: /dashboard/energy` stays `/dashboard/energy`.
- **Already-qualified** paths pass through unchanged — a `link` that already starts with `/view/…`
  or `/dashboard/…` is used verbatim (lets you pin an exact cross-app URL).

---

## Nested navigation + the sidebar/header split

Nest links with `children` to build a hierarchy. The frontend then **splits** the tree between the
sidebar and the top (header) navigation:

- **Levels 1–3** render in the **sidebar**.
- **Levels 4–5** (the children of a level-3 group) move to the **top / header** navigation.
- **Maximum 5 levels** — anything deeper is not rendered.

In the Navigation Config UI, level-4/5 links are tagged with a **"Top Nav"** chip so you can see at
a glance which links move to the header.

```yaml
navigationLinks:
  - label: Locations           # level 1  (sidebar)
    icon: fas building
    link: /locations
    pageId: ui/locations-view
    children:
      - label: Portfolios      # level 2  (sidebar)
        link: /portfolios
        pageId: ui/portfolio-view
        children:
          - label: Types       # level 3  (sidebar)
            link: /types
            pageId: ui/types-view
            children:
              - label: Archived  # level 4  (header / "Top Nav")
                link: /types/archived
                pageId: ui/types-archived-view
```

---

## Grouping nodes & `replaceChildrenWith`

A link with `link: null` (and no type) is a **grouping node** — a header that only organizes its
children. Groupings need no `pageId`.

`replaceChildrenWith: <AppId>` splices another app's `navigationLinks` in as this node's children.
This is how the master menu in `DefaultConfig.yml` pulls each app's own navigation into place:

```yaml
navigationLinks:
  - label: Administration
    icon: fas shield-halved
    link: null                 # grouping node — just a header
    appRoles: ['System:canopenapp']
    children:
      - label: Admin Tools
        icon: fas toolbox
        link: null
        replaceChildrenWith: System   # ⇒ children come from the System app's Configuration.yml
        children: []
```

---

## `type: dynamic` (advanced)

A `dynamic` link has no static URL. Its children are produced at runtime by a service call defined
under `metadata.dynamic.execute`. Use this when a submenu depends on live data (installed packages,
tenant config, etc.):

```yaml
- label: CMMS
  icon: null
  type: dynamic
  metadata:
    dynamic:
      execute:
        type: service
        app: IvivaDX
        service: DXApp:MenuStructure
        parameters:
          PackageType: CMMSLite
```

The service returns the child links, which are inserted under this node when the menu is built.

---

## Permissions & access guardrails

### Who can see a link

- **`userGroups`** — array of user-group keys. Empty = every user.
- **`appRoles`** — array of qualified `App:role` strings, e.g. `System:canmanage`. Empty = every user.
- A user needs to satisfy the link's groups/roles to see it. Empty on both = visible to all.

```yaml
- label: Settings
  link: /settings
  pageId: ui/settings-view
  userGroups: ["1", "2"]          # only these groups
  appRoles: ["Location.canviewapp"]
```

### `isPublic` — no session required

Set `isPublic: true` to make a link reachable **without logging in**. It is **not inherited** — each
public link must set it explicitly. A [locked](#lockaccess--system-managed-access) link is never
public regardless of this flag.

### `protected` — can't be deleted

`protected: true` marks a link (and, by cascade, its whole subtree) as **undeletable from the master
list**. The Navigation Config UI and delete services refuse to remove it. Use it for links that must
always exist (the Administration menu, core system tools).

### `lockAccess` — system-managed access

`lockAccess: true` makes a link's access **system-managed** and **cascades to all descendants**:

- **Never public** — `isPublic` is forced off.
- **Roles/groups are read-only** in the UI and only changeable via YML.
- Meant for links that must be restricted (admin-only tooling) and should never be accidentally
  opened up.

> **Configure at least one role or group on a locked link.** A locked link that has a URL but no
> `userGroups` and no `appRoles` would be open to everyone — the sync logs a warning if it finds one.

Real master-menu example (both flags, cascading to the whole admin subtree):

```yaml
- label: Administration
  icon: fas shield-halved
  link: null
  userGroups: []
  appRoles: ['System:canopenapp']
  protected: true     # cannot be deleted from the master list; cascades to the subtree
  lockAccess: true    # access is system-managed: never public, roles/groups read-only; cascades
  children:
    - label: Admin Tools
      icon: fas toolbox
      link: null
      replaceChildrenWith: System
      children: []
```

---

## `otherRoutes` reference

`otherRoutes` registers routes that **don't appear in navigation** — detail pages, edit forms,
redirects. It's a map of **path → route config**. The path key may contain `:params`.

```yaml
otherRoutes:
  "/details/:userKey":
    pageId: ui/user-details-view
    title: ":name"                 # dynamic title from a param
    userGroups: []
    appRoles: []
  "/":
    redirectTo: /dashboard         # redirect entries carry only redirectTo
```

| Key | Type | Meaning |
|---|---|---|
| `pageId` | string | Component to render. |
| `title` | string | Page/browser title. Can use `:paramName`. |
| `redirectTo` | string | Redirect target. A redirect entry ignores every other field. |
| `type` | string | Route type; defaults to `view`. |
| `userGroups` | string[] | Allowed groups (empty = all). |
| `appRoles` | string[] | Required roles (empty = all). |
| `isPublic` | bool | Reachable without a session. Not inherited. |

**Route parameters** (`:userKey` above) are **auto-extracted** from the path and passed to the
component as props — you don't declare them separately:

```typescript
// URL: /view/user/details/USR-123
const UserDetails = ({ uxpContext, userKey }) => {
    console.log(userKey); // "USR-123"
};
```

---

## App-level config fields

These sit at the root of each app's `Configuration.yml` (the System `DefaultConfig.yml` has only
`navigationLinks`, since it's the account-wide root menu):

| Field | Meaning |
|---|---|
| `appId` | App identifier (must match the app folder). |
| `bundleId` | Bundle id; qualifies `pageId`s. |
| `bundleJsonPath` | Path to `bundle.json`. |
| `baseRoute` | URL prefix combined into view links (`/location` ⇒ `/view/location/…`). |
| `defaultType` | Default `type` for links/routes that don't set one (falls back to `view`). |
| `scripts` | JS entry points to load. |
| `navigationLinks` | The nav tree (this document). |
| `otherRoutes` | Non-nav routes (above). |

See [Configuration.yml Setup](./configuration-reference.md) for the full app-config reference.

---

## DB as source of truth + syncing

Once `AccountNavigationLinks` has records, **the DB overrides YML**. That lets each account
customize navigation (reorder, rename, adjust access, hide links) without editing shipped YML.

- **First sync** flattens the merged YML tree (`DefaultConfig.yml` + every app's `Configuration.yml`)
  into the DB.
- **Navigation Config UI** (System app → configurations) edits the DB copy directly.
- **Sync from YML** re-applies YML. By default it **preserves manual ordering** (a default-on
  "preserve manual ordering" toggle) and keeps user-modified links; opt out to reset order/overwrite.
- **Profiles** — a *navigation profile* is a custom sidebar assigned to one or more **user groups**,
  derived from the master list. Each user group belongs to at most one profile. Use profiles to give
  different groups different (usually narrower) menus.

### Adding new links from YML

When you ship a new link in YML, run a sync so it lands in the DB. A safe sync keeps existing
customizations; a forced sync overwrites user-modified links.

---

## IDs & sync churn

- **`id` is optional.** If omitted, it's derived deterministically: from the final URL
  (`/view/system/dashboard` ⇒ `view-system-dashboard`), or for groupings from `appId-label`.
- **Duplicate ids** get a deterministic suffix (`-2`, `-3`, …), **not** a random GUID. This matters:
  a random id would look like a *new* link on every sync, causing "added N / deleted N" churn. Stable
  ids mean re-syncs are no-ops when nothing changed.
- **Order is preserved** across syncs unless you explicitly reset it, so manual reordering in the UI
  survives shipping new YML.

Set an explicit `id` when you want a link's identity to stay fixed regardless of its URL or label.

---

## SDM commands

Navigation can be synced/managed from the CLI. Run against an account:

| Command | What it does |
|---|---|
| `sdm <account> syncnavigation [--force] [--reset-order]` | Sync app YML nav into the DB. Safe by default (keeps user-modified links and their order). `--force` overwrites modified links; `--reset-order` re-applies YML ordering. |
| `sdm <account> resetnavigation` | Nuclear reset — wipe all DB navigation, then rebuild from YML (force + reset-order). Profile-safe (protected links restored from YML). |
| `sdm <account> listnavprofiles` | List navigation profiles with their user groups and link counts. |
| `sdm <account> copyalllinkstoprofile <profileKey>` | Replace a profile with **every** master link — recovery path if a profile locked users out. |
| `sdm <account> createnavprofile <label> <groups>` | Create a profile seeded with all master links and assign user groups (by name). |
| `sdm <account> assignnavprofile <label> <groups>` | Assign user groups (by name) to an existing profile. |

---

## Gotchas / validation checklist

Before shipping navigation, verify:

- [ ] `pageId` casing matches the `registerUI()`/`registerWidget()` id **exactly** (blank page otherwise).
- [ ] Rendered links have a `pageId`; grouping nodes (`link: null`) don't need one.
- [ ] All `link` and route paths start with `/`.
- [ ] Locked links (`lockAccess: true`) have at least one `userGroups` or `appRoles` entry.
- [ ] Dynamic route params use `:paramName` in the `otherRoutes` key.
- [ ] `otherRoutes:` is present (even as `{}`) — omitting it or leaving it valueless breaks YAML parsing.
- [ ] No duplicate route paths.
- [ ] Remember the **DB wins**: after first sync, editing YML alone won't change anything until you
      re-sync.

---

## Next steps

- [Configuration.yml Setup](./configuration-reference.md) — full app-config reference.
- [Add Navigation and Validate](./first-navigation.md) — the getting-started walkthrough.
- [Troubleshooting Guide](./troubleshooting.md) — diagnosing silent config failures.
