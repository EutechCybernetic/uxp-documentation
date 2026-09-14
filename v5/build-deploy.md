# Building & Deployment

Build and deploy your v5 apps.

---
## Building Your App

### Development Build

```bash
npm run watch
```
This watches for changes and rebuilds automatically.

### Production Build

```bash
npm run build
```

Creates optimized bundle in `dist/main.js`.

## Deploy Your App

### Setup 
Follow the standard app setup process in iviva (clone/copy app in to a filder and update the iviva.config.yml to point to the app)

### Enable App

```bash
sdm <account> enableapp <AppName> <Version>
```

### MergeDB & Install Views

```bash
sdm <account> mergedb auto
sdm <account> installviews
```

That's it!. 

### Access Your App

```
https://your-account.lucy-server.com/view/<baseroute>
```


## Cache and versions

Two different things get cached, and only one of them needs your attention.

**Configuration is cached, so bust it.** The processed app configuration (routes, pages, navigation,
scripts) is cached in Redis for 24 hours. After changing `Configuration.yml`, navigation or localization,
reset it on every node:

```bash
sdm resetv5cache [account|all] [scope]
```

Both arguments default to `all`. Scopes are `all`, `appconfig`, `modules`, `login` and `localisation`.

| You changed | Run |
|---|---|
| `Configuration.yml`, routes, pages | `sdm resetv5cache <account> appconfig` |
| An uploaded UXP module or bundle | `sdm resetv5cache <account> modules` |
| `localization.json` or `Messages.xml` | `sdm resetv5cache <account> localisation` |
| The login page configuration | `sdm resetv5cache <account> login` |
| Not sure | `sdm resetv5cache <account>` |

**Rebuilt bundles need nothing.** Every local script URL is content-hash versioned with a `?v=` query on
each render, so a redeployed `dist/*.js` is served under a new URL the next time the page loads. There is
no cache to bust for a rebuild, and no need to tell users to hard-refresh.

---

## Common Issues

| Symptom | Cause | Fix |
|---------|-------|-----|
| Blank page after deploy | Build not run | `npm run build` in `Resources/views/` |
| Script 404 in browser | `dist/main.js` missing | Run build, verify file exists |
| Code changes have no effect | Stale build or browser cache | `npm run build` + hard-refresh (`Ctrl/Cmd + Shift + R`) |
| App not visible at all | App not enabled | `sdm <account> enableapp <AppName> <Version>` |
| Routes return 404 after enableapp | DB not updated | Run `mergedb auto` + `installviews` |
| Config changes not reflected | Redis cache (24h TTL) | `sdm resetv5cache <account> appconfig` |

> See [Troubleshooting Guide](./troubleshooting.md) for full diagnostics.

---

## Next Steps

- [Best Practices](./best-practices.md) - Best Practices 