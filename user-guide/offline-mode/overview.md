# Offline mode

Offline mode is for iviva servers with no internet access. This page is for administrators and system integrators.

## What it does

- The browser loads every script, style, icon and logo from the iviva server, not from the iviva CDN.
- Everything the pages need ships with iviva. There is nothing to download.
- Some features need the internet. In offline mode:
  - Pages that need the internet are hidden from the menu. Opening one shows **Not available offline**.
  - In the widget designer, templates that need the internet show a **Needs internet** tag: YouTube, Canva, MapsIndoor and Map Widget.
  - Content you add yourself, such as a YouTube link in a widget, is not checked. It only works if the browser can reach that site.

## Turn offline mode on or off

Offline mode is an account setting. Run these on the server:

1. Turn it on: `sdm <account> config OfflineAccess 1`.
2. Apply it: `sdm resetv5cache <account> accountsettings`. No restart is needed.
3. Reload iviva in the browser.

To turn it off, set `OfflineAccess` to `0` and run step 2 again.

## The OfflineResourcesPath setting

One setting controls where offline files come from: `OfflineResourcesPath`.

**Where to set it:**
- In `iviva.config.yml`, for the whole server. Restart iviva after changing it.
- As an account setting, for one account: `sdm <account> config OfflineResourcesPath <value>`, then `sdm resetv5cache <account> accountsettings`.
- If both are set, the account setting wins.
- Only one of them is used for an account.

**What the value means:**
- A **folder** on the server: iviva uses the files in it to replace its own files. See [Replace offline files](#replace-offline-files).
- A **web address** starting with `http://` or `https://`: offline pages load their files from that server. See [Use a mirror server](#use-a-mirror-server).
- **Not set:** iviva uses its own files. Nothing is replaced.

**Defaults:**
- Docker: `/iviva/config/offline-resources`. It is set in the docker config file.
  - Mount `/iviva/config` as a volume (the standard compose files do). Then the files survive upgrades and container rebuilds.
- Other installs: not set. Add it to `iviva.config.yml` if you need it. For example:

  ```yaml
  OfflineResourcesPath: C:\Eutech\uploads\offline-resources
  ```

  Put it at the same level as `FileServer`.

## Replace offline files

Use this to replace a file without changing the app. For example a newer uxp build or a logo.

**How it works:**
- iviva checks the folder first, file by file.
- If the file is there, iviva serves it. If not, iviva serves its own file.
- The browser never sees the folder path.
- It works with offline mode on or off.

**Folder layout:** start with the app name, then the path under that app's `Resources` folder.

| The browser asks for | Put the file here |
|---|---|
| `/Resources/UXP/offline-resources/dist/v5.0.0/main.js` | `<folder>/UXP/offline-resources/dist/v5.0.0/main.js` |
| `/Resources/UXP/offline-resources/static/iviva-logo-light.png` | `<folder>/UXP/offline-resources/static/iviva-logo-light.png` |
| `/Resources/Lucy/lucy-components/dist/main.js` | `<folder>/Lucy/lucy-components/dist/main.js` |

To find the path of a file: open the browser developer tools, **Network** tab, and copy the address after the server name.

**Steps:**
1. Copy the new file to the matching path in the folder. Create the sub-folders if needed.
2. Reload the page. No restart is needed.

**To undo:** delete the file from the folder and reload.

**Good to know:**
- You can copy single files or a whole folder, for example the full `offline-resources` folder.
- An empty or missing folder means iviva uses its own files.
- Anyone who can open iviva pages can download these files. Only put files in the folder that are meant to be served.
- The login page is cached. If a replaced file does not show there, run `sdm resetv5cache <account> login`.

## Use a mirror server

Use this to serve the offline files from another web server on your network. For example, one mirror for several iviva servers.

1. Copy the `offline-resources` folder from the UXP app to the web server: `ivivaweb/SystemApps/UXP/5.0/Resources/offline-resources`.
2. Set `OfflineResourcesPath` to its address, for example `https://files.example.local/uxp`.
3. Apply it: run `sdm resetv5cache <account> accountsettings` for an account setting, or restart iviva for the config file.

When a mirror address is set, no folder is used to replace files.

## After an upgrade

- An upgrade brings new built-in files.
- Files in your folder still replace them.
- After each upgrade:
  - check which files are in your folder;
  - replace them with newer copies, or delete the ones you no longer need.

## Troubleshooting

| Problem | Cause | Fix |
|---|---|---|
| Pages still call the internet | `OfflineAccess` is not `1`, or the change was not applied | Set it, then run `sdm resetv5cache <account> accountsettings` |
| A replaced file does not show | Wrong path in the folder | Check the path starts with the app name, e.g. `UXP/` |
| A replaced file does not show | The setting points somewhere else | Check `OfflineResourcesPath`. The account setting wins over the config file |
| A replaced file does not show | The browser cache | Reload without the cache (Ctrl+Shift+R / Cmd+Shift+R) |
| The mirror address is ignored | The address has characters a web address cannot have | Check the server log for a warning from `OfflineResources` |
| Nothing is replaced, log says the folder does not exist | The folder is missing or the path is wrong | Create the folder, or fix the path |
| A page says **Not available offline** | The page needs the internet | It works when offline mode is off |
