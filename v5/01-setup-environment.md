# Step 1: Setup Development Environment

Setup your development environment for building v5 apps.

---

## Prerequisites

- Node.js 20+ installed
- Code editor (VS Code recommended)
- Git installed
- Access to iviva repositories

---

## 1. Setup iviva Framework

Clone and build the framework:

```bash
# Clone framework
git clone http://source.iviva.com/dinesh/iviva-net-core
cd iviva-net-core
git checkout v5-design-changes

# Build framework
cd iviva-net-core
dotnet publish -o ../build

# Run ivivaweb
cd ../build
dotnet ivivaweb.dll
```

**Note:** Use this local build instead of release builds for v5 development.

---

## 2. Setup Apps Repository

Clone the apps repository:

```bash
cd /path/to/your/iviva/apps
git clone http://source.iviva.com/dinesh/iviva.dx
cd iviva.dx
git checkout dev/dinesh
```

---

## 3. Enable V5 Apps

Enable System and Location v5 apps:

```bash
sdm <account> enabledapp System 5.0
sdm <account> enabledapp Location 5.0
sdm <account> mergedb auto
sdm <account> installviews
```

---

## 4. Verify Framework Setup

Access v5 screen:

```
http://<your-account-url>/view/location
```

If you see the Location v5 app, framework setup is complete.

---

## Next Steps

Your development environment is ready. Continue to:

- [Step 2: Migration Setup](./02-migration-setup.md) - Setup your app for migration
