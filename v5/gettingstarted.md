# Getting Started with V5 Development

This guide will walk you through setting up your development environment to start working on v5 developments and migrations.

---

## Prerequisites

- **Iviva development environment** already set up and working

If you haven't set up the iviva development environment yet, please refer to the internal setup guides first.

---

## 1. Framework Setup

### Clone the Framework Repository
Until we do a formal build for v5 framework, we will be using the framework code.

```bash
git clone http://source.iviva.com/dinesh/iviva-net-core
cd iviva-net-core
git checkout v5-design-changes
```

### Build the Framework

Navigate to the `iviva-net-core` folder and build the framework:

```bash
cd iviva-net-core
dotnet publish -o ../build
```

This will compile the framework and output the build to a `build` folder in the parent directory.

### Run the Framework

Navigate to the build folder and start ivivaweb:

```bash
cd ../build
dotnet ivivaweb.dll
```

**Note:** Use this local build instead of the release builds you normally use. This allows you to work with the latest v5 changes.

---

## 2. Apps Setup

### Clone the Apps Repository

Clone the iviva.dx repository into your `apps` folder:

```bash
cd /path/to/your/iviva/apps
git clone http://source.iviva.com/dinesh/iviva.dx
cd iviva.dx
git checkout dev/dinesh
```

This repository contains the v5 apps including Location 5.0.

---

## 3. Configuration

### Enable V5 Apps

Enable the System 5.0 and Location 5.0 apps for your setup:

```bash
sdm <account> enabledapp System 5.0
sdm <account> enabledapp Location 5.0
```

Replace `<account>` with your actual account name.

### Run Migrations

Merge the database schema and install views:

```bash
sdm <account> mergedb auto
sdm <account> installviews
```
---

## 4. Accessing V5

Once setup is complete, you should be able to access the v5 interface:

```
http://<your-account-url>/view/location
```

Replace `<your-account-url>` with your actual iviva account URL.

---

## Next Steps

- **[Data Fetching](./data-fetching.md)** - Learn the new data fetching patterns in v5
- **Start developing widgets** - Use the v5 configuration-driven architecture
- **Explore the Location app** - See how v5 apps are structured

---

## Additional Resources

- All repository links: https://ecyber.slack.com/docs/T03A4H65U/F09SCMA2J1G

**Note:** The `uxp-core react` repo is not required for development - you can ignore it. 


