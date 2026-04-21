# Troubleshooting V5 Apps

Common issues and how to fix them. Start with the **Quick Checklist** at the bottom if you're not sure where to begin.

---

## 1. Configuration.yml — Wrong Location or Wrong Filename Casing

**Symptom:** App doesn't appear, no navigation links, routes don't exist.

**The file must be at:**
```
<AppName>/<Version>/Configuration.yml
```

| | Path |
|---|---|
| ✅ Correct | `/apps/iviva.dx/Location/5.0/Configuration.yml` |
| ❌ Wrong (wrong folder) | `/apps/iviva.dx/Location/5.0/Resources/views/Configuration.yml` |
| ❌ Wrong (lowercase c) | `/apps/iviva.dx/Location/5.0/configuration.yml` |

> **Note:** Linux servers are case-sensitive. `configuration.yml` and `Configuration.yml` are different files. Always use uppercase `C`.

---

## 2. `appId` Doesn't Match the App Folder Name

**Symptom:** App is silently skipped, nothing appears.

The server uses `appId` to locate the app on disk. It must **exactly** match the folder name — including capitalisation.

```yaml
# App folder name: ServiceRequest
# ✅ Correct
appId: ServiceRequest

# ❌ Wrong
appId: servicerequest
appId: service-request
appId: Service_Request
```

---

## 3. `bundleId` Mismatch Between Configuration.yml and bundle.json

**Symptom:** Pages are blank, no error in browser console, navigation links appear but views don't render.

`bundleId` must be **identical** in both files. The server uses it to map components to bundles. A mismatch causes component lookup to silently fail.

**Configuration.yml:**
```yaml
bundleId: iviva-location-app
```

**bundle.json:**
```json
{
  "id": "iviva-location-app",
  ...
}
```

> **Recommendation:** Always use all-lowercase with hyphens: `iviva-<appname>-app`

---

## 4. UI/Widget IDs Are Case-Sensitive — Must Match in Three Places

**Symptom:** Navigation link exists, clicking it shows a blank page or "component not found".

There are three places the ID must match **exactly**:

1. `pageId` in `Configuration.yml` (the part after `ui/`)
2. `id` in `bundle.json` under `uis[]`
3. `id` in `registerUI()` call in `index.tsx`

```yaml
# Configuration.yml
pageId: ui/portfolio-view       # ← "portfolio-view"
```

```json
// bundle.json
{
  "uis": [
    { "id": "portfolio-view" }  // ← must match
  ]
}
```

```typescript
// index.tsx
registerUI({
  id: "portfolio-view",         // ← must match
  component: PortfolioView
});
```

> **Recommendation:** Always use all-lowercase with hyphens: `portfolio-view`, `details-view`, `settings-view`

---

## 5. `otherRoutes` Is Required — Cannot Be Omitted

**Symptom:** Entire app config is silently dropped, no navigation or routes appear.

`otherRoutes` is a required field. If it is missing or has an empty key with no value, YAML parsing fails and the whole app configuration is discarded.

```yaml
# ✅ Correct — no extra routes needed, use empty object
otherRoutes: {}

# ✅ Correct — with routes
otherRoutes:
  "/details/:locationKey":
    pageId: ui/details-view
    title: Location Details

# ❌ Wrong — key present but no value (YAML parses as null → fails)
otherRoutes:

# ❌ Wrong — field omitted entirely → parsing fails
```

---

## 6. Build Not Run — `dist/main.js` Missing or Stale

**Symptom:** Blank page, browser Network tab shows 404 on the script file, or code changes have no effect.

You must run the build after every code change. The server serves `dist/main.js` — if it doesn't exist or is outdated, nothing works.

```bash
cd Resources/views

# First time setup
npm install

# One-time build
npm run build

# During development (rebuilds on file change)
npm run watch
```

**Verify the build exists:**
```bash
ls -la Resources/views/dist/main.js
```

The file should exist and have a recent timestamp. If it's missing, the build failed — check the build output for errors.

---

## 7. App Not Appearing At All

**Symptom:** No navigation links from the app, routes return 404, app completely invisible.

**Step 1:** Enable the app:
```bash
sdm <account> enableapp <AppName> <Version>
```

- Command is `enableapp` — NOT `enabledapp`
- `<AppName>` must match the folder name exactly (case-sensitive)
- `<Version>` must match the version folder (e.g., `5.0`)

**Step 2:** Run database commands:
```bash
sdm <account> mergedb auto
sdm <account> installviews
```

**Step 3:** Check for YAML errors — if `Configuration.yml` has any syntax error, the server silently skips the app. Check server logs for:
```
Error reading YAML configuration for app Location: ...
Error processing app 'Location' configuration: ...
```

---

## 8. 404 / Page Not Found

**Symptom:** Navigation link appears but clicking it shows a 404.

**Check `baseRoute`:**
- Must start with `/`
- No trailing slash
- ✅ `/location` ❌ `/location/` ❌ `location`

**Check `link` values in `navigationLinks`:**
- Relative to `baseRoute`
- `/portfolios` under `baseRoute: /location` → URL becomes `/view/location/portfolios`

**Check dynamic routes** — they must be in `otherRoutes`:
```yaml
otherRoutes:
  "/details/:locationKey":
    pageId: ui/details-view
```

---

## 9. Navigation Links Not Showing

**Symptom:** App is enabled and working but specific nav links are invisible for some users.

- Check `appRoles` and `userGroups` — empty arrays allow all users; non-empty arrays restrict access
- Check `label` is set (required for display)
- If the server DB table `AccountNavigationLinks` has records for this account, it overrides YML — the DB is the source of truth when populated

---

## 10. Config Changes Not Taking Effect

**Symptom:** Changed `Configuration.yml` but the old config still appears.

The server caches app configuration in Redis for **24 hours**. After changing `Configuration.yml`:
- Restart the server to clear the cache, OR
- Wait for cache expiry (up to 24 hours)

For **script/code changes** (not config), a browser hard-refresh is enough:
- Windows/Linux: `Ctrl + Shift + R`
- Mac: `Cmd + Shift + R`

---

## Quick Checklist

Run through this list top-to-bottom before digging deeper:

- [ ] `Configuration.yml` is in `<App>/<Version>/` — **not** in `Resources/views/`
- [ ] Filename is `Configuration.yml` with **uppercase C**
- [ ] `appId` exactly matches the app folder name (case-sensitive)
- [ ] `bundleId` is **identical** in `Configuration.yml` and `bundle.json`
- [ ] All component IDs are **lowercase-with-hyphens** and match in all three places (`Configuration.yml` `pageId`, `bundle.json`, `registerUI()`)
- [ ] `otherRoutes: {}` is present (even if empty — do NOT omit)
- [ ] Build has been run: `npm run build` — `dist/main.js` exists
- [ ] App is enabled: `sdm <account> enableapp <AppName> <Version>`
- [ ] DB commands run: `mergedb auto` + `installviews`
- [ ] Browser hard-refreshed after changes
- [ ] Browser console checked for JS errors
- [ ] Browser Network tab checked — is `main.js` loading (200, not 404)?
