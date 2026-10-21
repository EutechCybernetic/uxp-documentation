# Offline deployments

Some iviva servers have no internet access. This page covers what your app must do to work there.

## What offline means for your app

- The account setting `OfflineAccess` is `1`.
- The browser must not call the internet.
- iviva handles its own files:
  - CDN addresses in the host page are rewritten to the iviva server.
  - `https://uxp.iviva.com/<path>` becomes `/Resources/UXP/offline-resources/<path>`.
  - `https://static.iviva.com/<path>` becomes `/Resources/UXP/offline-resources/static/<path>`.
- Your app's own files are served from `/Resources/<YourApp>/...`. They work offline already.
- Anything else your code loads from the internet fails.

## Rules

- **Ship what you load.**
  - Put third-party scripts, styles, images, fonts, 3D decoders and model files in your app's `Resources` folder.
  - Load them by path, not from a CDN.
- **Fonts.**
  - Do not `@import` Google Fonts.
  - Download the font with `npx lucy-xp download-font <family>`.
  - Load it with `@font-face` in your SCSS.
  - Better: use the iviva theme font. Do not add your own.
- **iviva CDN files.** Wrap any `https://uxp.iviva.com/...` or `https://static.iviva.com/...` address in `resolveResourceUrl()`.
- **Features that need the internet** (AI services, video embeds, external maps, a marketplace): hide them, or show a message, when `isOfflineDeployment()` is `true`.
- **Whole pages that need the internet:** set `"requiresInternet": true` on the page in `bundle.json`. See [Pages that need the internet](#pages-that-need-the-internet).
- **User content is not your job.** A URL a user types into a widget works if the browser can reach it. Do not check it.

## Helper functions

Both come from `uxp/components`.

| Function | Returns |
|---|---|
| `isOfflineDeployment()` | `true` on an offline server |
| `resolveResourceUrl(url)` | Online: `url` unchanged. Offline: the server address of a `uxp.iviva.com` / `static.iviva.com` file. Any other address is returned unchanged. |

```tsx
import { isOfflineDeployment, resolveResourceUrl, NotificationBlock } from 'uxp/components';

// hide a feature that needs the internet
if (isOfflineDeployment()) {
    return <NotificationBlock variant="info" message={context.$L('myapp.text.needs-internet')} />;
}

// online: unchanged
// offline: '/Resources/UXP/offline-resources/static/iviva-logo-dark.png'
const logo = resolveResourceUrl('https://static.iviva.com/iviva-logo-dark.png');
```

## Pages that need the internet

Set the flag on the page in your app's `bundle.json`:

```json
{
    "uis": [
        {
            "id": "marketplace-view",
            "label": "Marketplace",
            "requiresInternet": true
        }
    ]
}
```

What happens:

| | Online | Offline |
|---|---|---|
| Menu links to the page | Shown | Hidden. A link with visible children stays as a group. |
| Opening the page | Works | Shows **Not available offline** inside the normal layout, with a Go back button |
| Public page, signed-out visitor | Works | Same notice. No login redirect. |

- Set the flag once, on the page. Every link and route to that page follows it.
- Requires uxp with the offline page notice. On an older uxp, a flagged page shows **404** offline.

## Test your app offline

1. On your dev server, turn offline mode on:
   - `sdm <account> config OfflineAccess 1`
   - `sdm resetv5cache <account> accountsettings`
2. Open the browser developer tools, **Network** tab. Block these hosts: `*.iviva.com`, `*.googleapis.com`, `*.gstatic.com` and `*.amazonaws.com`.
3. Open every view of your app.
4. Check:
   - no failed or blocked requests;
   - no console errors;
   - features that need the internet are hidden or show a message;
   - pages with `"requiresInternet": true` show the notice and have no menu link.
5. Turn it off: `sdm <account> config OfflineAccess 0`, then `sdm resetv5cache <account> accountsettings`.

## Common mistakes

- A Google Fonts `@import` in a CSS or SCSS file.
- A `<script>` or `import()` from a CDN, for example Draco, Babylon or a chart library.
- Hard-coded `https://static.iviva.com/...` logos in default settings. Use `resolveResourceUrl()`.
- YouTube or Vimeo players in your own screens with no offline check.
- Icons or JSON files loaded from S3.

## Where to go next

- [Build and Deploy](./build-deploy.md)
- [lucy-xp CLI](../uxp/lucy-xp.md)
- [Offline mode](../user-guide/offline-mode/overview.md): setup for administrators
