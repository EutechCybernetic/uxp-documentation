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
sdm <account> enabledapp <AppName> <Version>
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


## Next Steps

- [Best Practices](./15-best-practices.md) - Best Practices 