# Building & Deployment

Build and deploy your v5 apps to Lucy using the lucy-xp CLI.

---

## Prerequisites

Install lucy-xp CLI globally:

```bash
npm install -g lucy-xp
```

---

## Building Your App

### Development Build

```bash
npm run dev
# or
npm run watch
```

This watches for changes and rebuilds automatically.

### Production Build

```bash
npm run build
```

Creates optimized bundle in `dist/main.js`.

---

## Bundle Configuration

Create `bundle.json` in your project root:

```json
{
    "moduleId": "com.example.location",
    "version": "5.0.0",
    "name": "Location Management",
    "description": "Location management module for v5",
    "author": "Your Name",
    "scripts": [
        "./dist/main.js"
    ],
    "styles": [
        "./dist/main.css"
    ],
    "localization": "./localization.json",
    "dependencies": [],
    "category": "Business Apps"
}
```

### Required Fields

- **moduleId** - Unique identifier (use reverse domain: `com.company.appname`)
- **version** - Semantic version (MAJOR.MINOR.PATCH)
- **scripts** - JavaScript files to load
- **name** - Display name
- **description** - Brief description

### Optional Fields

- **styles** - CSS files
- **localization** - Path to localization.json
- **dependencies** - Array of moduleIds this app depends on
- **category** - App category
- **author** - Developer/team name

---

## CLI Configuration

### Option 1: .lucyxp.config (Recommended)

Create `.lucyxp.config` in your project root:

```json
{
    "url": "https://your-lucy-server.com",
    "apiKey": "SC:your-server:your-api-key"
}
```

### Option 2: Command Line

```bash
lucy-xp upload \
    --lucy-url https://your-lucy-server.com \
    --lucy-apikey SC:your-server:your-api-key
```

### Getting Your API Key

1. Log into Lucy
2. Settings → API Keys
3. Create new API key with upload permissions
4. Copy the key (format: `SC:server:hash`)

---

## Uploading Your App

### Basic Upload

```bash
lucy-xp upload
```

Uses defaults:
- JavaScript: `./dist/main.js`
- Bundle: `./bundle.json`
- Credentials: From `.lucyxp.config`

### Custom Paths

```bash
lucy-xp upload ./dist/app.js ./config/bundle.json
```

### NPM Scripts

Add to `package.json`:

```json
{
    "scripts": {
        "build": "webpack --mode production",
        "dev": "webpack --mode development --watch",
        "upload": "lucy-xp upload",
        "deploy": "npm run build && npm run upload"
    }
}
```

Deploy with:

```bash
npm run deploy
```

---

## Testing Deployment

### 1. Upload

```bash
npm run deploy
```

### 2. Enable App

```bash
sdm <account> enabledapp <ModuleId> <Version>

# Example:
sdm myaccount enabledapp com.example.location 5.0.0
```

### 3. Install Views

```bash
sdm <account> installviews
```

### 4. Access Your App

```
https://your-account.lucy-server.com/view/location
```

---

## Version Management

Follow semantic versioning:

- **MAJOR** (5.0.0) - Breaking changes
- **MINOR** (5.1.0) - New features, backward compatible
- **PATCH** (5.0.1) - Bug fixes

Update version in `bundle.json`, rebuild, and upload:

```json
{
    "version": "5.1.0"
}
```

```bash
npm run deploy
```

---

## Multi-Environment Setup

### Development

`.lucyxp.config`:
```json
{
    "url": "https://dev.lucy-server.com",
    "apiKey": "SC:dev:..."
}
```

### Production

`.env.production`:
```json
{
    "url": "https://production.lucy-server.com",
    "apiKey": "SC:prod:..."
}
```

### NPM Scripts

```json
{
    "scripts": {
        "deploy:dev": "npm run build && lucy-xp upload",
        "deploy:prod": "npm run build && lucy-xp upload --lucy-env .env.production"
    }
}
```

---

## Common Issues

### "Module not found"

Bundle uploaded but not enabled:

```bash
sdm <account> enabledapp <ModuleId> <Version>
sdm <account> installviews
```

### "Component not registered"

Ensure components are registered:

```typescript
registerUI({
    id: "location-view",
    component: LocationView
});

registerWidget({
    id: "stats",
    widget: StatsCards
});
```

### "Route not found"

Verify `configuration.yml` has correct routes and pageId mappings:

```yaml
# configuration.yml
baseRoute: /location
navigationLinks:
  - label: Portfolios
    link: /portfolios
    pageId: ui/portfolio-view  # Must match registered component ID
```

### "Styles not loading"

Check bundle.json includes CSS:

```json
{
    "styles": ["./dist/main.css"]
}
```

---

## Deployment Checklist

Before deploying, verify:

- [ ] Code builds without errors
- [ ] bundle.json has correct moduleId and version
- [ ] All components are registered (registerUI/registerWidget)
- [ ] configuration.yml has correct routes and pageId mappings
- [ ] Localization file is included (if applicable)
- [ ] enableLocalization() is called in index.tsx
- [ ] Styles are compiled and included
- [ ] Dependencies are listed in bundle.json
- [ ] API key has upload permissions

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/`) for complete bundle.json and deployment examples.

---

## Next Steps

- [Migrating to V5](./migrating-to-v5.md) - Migrate existing apps
- [Core Components](./core-components.md) - Use UXP components
- [Data Fetching](./data-fetching.md) - Fetch data from Lucy
- [Styling & Theming](./styling-theming.md) - Style your app
