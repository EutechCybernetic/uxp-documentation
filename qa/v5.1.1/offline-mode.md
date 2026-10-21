# Offline Mode: OfflineResourcesPath, Replacing Files and Pages That Need Internet

Offline mode (`OfflineAccess=1`) now has one setting for where offline files come from. Admins can replace app files without changing apps. Pages and widget templates that need the internet are marked when the server is offline.

- **Ticket:** [LPVR-1249](https://eutech.atlassian.net/browse/LPVR-1249).
- **Where:** any v5 account. Most changes show only with `OfflineAccess=1`. Replaced files apply with offline mode on or off.

# What It Does

- **Turning offline mode on or off:** `sdm <account> config OfflineAccess 1` (or `0`), then `sdm resetv5cache <account> accountsettings`. No restart.
- **One setting, `OfflineResourcesPath`:**
  - Set in `iviva.config.yml` (server) or as an account setting. The account setting wins.
  - The old account setting name `OfflineResourcePath` still works.
  - Docker config default: `/iviva/config/offline-resources`. Other installs: not set.
- **Folder value:** files in `<folder>/<App>/<path>` replace `/Resources/<App>/<path>`, one file at a time.
  - Example: `<folder>/UXP/offline-resources/static/iviva-logo-light.png`.
  - No restart. Delete the file and the built-in one is used again.
  - The page's script links (`?v=`) change when a file is replaced or removed.
- **`http(s)://` value:** a mirror server. Offline pages load their files from it. No folder is used.
  - An address with characters a web address cannot have is ignored. The built-in files are used and the log shows a warning.
- **Not set:** nothing is replaced.
- **Pages that need internet:** a page with `"requiresInternet": true` in its app's `bundle.json`, when offline:
  - its menu links are hidden;
  - opening it shows **Not available offline** inside the layout, with Go back;
  - signed-out visitors to a public page see the same notice, not the login page.
- **Widget designer:** offline, the YouTube, Canva, MapsIndoor and Map Widget templates show a **Needs internet** tag.
- **Other offline fixes:**
  - the default login logo loads from the server;
  - the Buy on Spaceworx button is hidden.
- **Online with no setting:** nothing changes.

# Testing Focus

- **Offline on, no setting:** the login page, home page, a dashboard, Users and Navigation load with no requests to `uxp.iviva.com` or `static.iviva.com`.
- **Folder in the config file:**
  - A file placed under `<folder>/UXP/...` replaces the built-in one after a reload.
  - It also works for another app's file, for example `<folder>/Lucy/...`.
  - Deleting the file brings the built-in one back.
- **Account folder and config folder both set:** the account folder is used.
- **Mirror address** (`https://...`) as the account setting, offline on: the page loads its files from that address, and no folder is used.
- **Unsafe mirror address** (contains a quote or `<`): the built-in files are used, and one warning is in the log.
- **Path tricks** with `..` or `%2e%2e` return no files from outside the folder.
- **Pages that need internet:**
  - To test, add `"requiresInternet": true` to one page entry in an app's `bundle.json`, then restart iviva.
  - Offline: the menu link is gone, and the page shows the notice inside the layout.
  - Online: the page and link work as before.
  - Remove the flag afterwards.
- **Widget designer:** offline, open the Widgets page and start a new widget. The four templates show **Needs internet**. Online, no tags show.
- **Offline off and no setting:** no screen changes anywhere.
