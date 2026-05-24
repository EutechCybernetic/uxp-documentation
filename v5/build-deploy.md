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


## Common Issues

| Symptom | Cause | Fix |
|---------|-------|-----|
| Blank page after deploy | Build not run | `npm run build` in `Resources/views/` |
| Script 404 in browser | `dist/main.js` missing | Run build, verify file exists |
| Code changes have no effect | Stale build or browser cache | `npm run build` + hard-refresh (`Ctrl/Cmd + Shift + R`) |
| App not visible at all | App not enabled | `sdm <account> enableapp <AppName> <Version>` |
| Routes return 404 after enableapp | DB not updated | Run `mergedb auto` + `installviews` |
| Config changes not reflected | Redis cache (24h TTL) | Restart server |

> See [Troubleshooting Guide](./troubleshooting.md) for full diagnostics.

---

## Next Steps

- [Best Practices](./best-practices.md) - Best Practices 