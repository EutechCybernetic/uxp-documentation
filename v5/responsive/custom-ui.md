# Your own UI on phones

Read this page only when you build UI yourself. The standard components need none of it.

## 1. Know when you are on a phone

uxp marks phones on the page. A phone here means:

- a screen under 768px wide
- a tablet held upright (up to 1279px wide)
- a phone held sideways (under 480px high)

**In SCSS**, put phone rules under the page flag:

```scss
html[data-uxp-viewport='mobile'] .myapp_panel {
    width: 100%;
}
```

The flag is `mobile` or `desktop`. It is set on every page, including the login page and pages outside the app shell.

**In code**, use the hook. It updates when the phone turns.

```tsx
import { useIsMobileLayout } from 'uxp/components';

const isMobile = useIsMobileLayout();
```

Outside a component, `isMobileLayout()` gives the current answer once.

Don't check the screen width yourself. Don't write your own `useIsMobile` hook. Your rule would disagree with the rest of the page.

## 2. Bottom toolbar: `MobileToolbar`

Use `MobileToolbar` for a bar of tools at the bottom of a phone screen.

```tsx
import { MobileToolbar } from 'uxp/components';

<MobileToolbar
    items={views}                 // a slider of choices: { id, label, icon?, count? }
    selected={viewId}
    onSelect={setViewId}
    actions={[{ id: 'filter', icon: 'fas filter', label: 'Filters', onClick: openFilters }]}
/>
```

- `items`, `selected`, `onSelect`: a slider, such as views or tabs.
- `actions`: icon buttons on the right: `{ id, icon, label, onClick, active?, dot?, loading?, disabled? }`.
- `search`: `{ value, onChange, placeholder? }` adds a search button.
- `leading`: your own content on the left when there is no slider, such as paging.
- `trailing`: your own content after the actions.

## 3. Sheets: `MobileSheet`

Use `MobileSheet` for a panel that slides up from the bottom, such as a list of actions.

```tsx
import { MobileSheet } from 'uxp/components';

<MobileSheet isOpen={open} onClose={() => setOpen(false)} title="Actions">
    …
</MobileSheet>
```

- `height`: `fit` (default) or `full`.
- The user closes it by tapping outside, pressing Esc, dragging it down, or Back (the swipe or the phone's Back button).

**Buttons in a sheet:** wrap them in `ButtonListContext` with `onAction`. Each button becomes a full-width row, and the sheet closes after the action runs.

```tsx
<ButtonListContext.Provider value={{ onAction: () => setOpen(false) }}>
    {actionButtons}
</ButtonListContext.Provider>
```

`{ icon: true }` shows the same buttons as icons instead. Each button needs a `leftIcon`.

## 4. Full-screen views: `useMobileLayer`

Some views take the whole phone screen, such as a details view. Call `useMobileLayer` while the view is open.

```tsx
import { useMobileLayer } from 'uxp/components';

useMobileLayer(isMobile && isOpen, { title: item.name, onClose: close });
```

- The app header shows `title`.
- The footer **Close** bar calls `onClose`.
- On phones, Back (the swipe or the phone's Back button) closes it, like the Close bar.
- It does nothing on the web.

`useHasMobileShell()` tells you whether the app shell is there. Outside the shell (for example a public page), show your own back button.

## 5. Sizes you can reuse

These CSS variables are set by uxp:

| Variable | Use |
|---|---|
| `--uxp-touch-row` | Height of a tappable row (3.5rem) |
| `--uxp-touch-button` | Size of a touch button (3rem) |
| `--uxp-header-height` | Height of the app header. 0 when there is no shell. |
| `--uxp-footer-height` | Height of the phone footer bar. 0 when there is none. |

Use the header and footer heights to keep fixed content clear of the bars:

```scss
.myapp_floating {
    bottom: calc(var(--uxp-footer-height) + 1rem);
}
```

## 6. Pages that need a larger screen

Some editors can't work on a phone, such as a canvas designer. Phones then show "This page needs a larger screen". The notice has no buttons: the phone's own Back, or the menu, leaves it.

**A whole page:** add `"desktopOnly": true` to its entry in your app's `bundle.json`.

```json
{ "id": "catalog-designer", "desktopOnly": true, "label": "Catalog Designer" }
```

**An editor that opens over a page that works on phones** (from a URL parameter, a modal or a panel): show `DesktopOnly` instead of the editor on phones.

```tsx
import { DesktopOnly, useIsMobileLayout } from 'uxp/components';

const isMobile = useIsMobileLayout();
if (isMobile && designerKey) return <DesktopOnly />;
```

Open the editor from the URL (e.g. `?designer=12`), so the phone's Back closes it.

Use this only when the page really can't work. Make the page responsive where you can.

## Don'ts

- No fixed widths wider than a phone. Use `width: 100%` with a `max-width`.
- No hover-only buttons or menus.
- No `!important` on uxp component sizes.
- No overrides of `.uxpcore_*` classes. They undo the phone layouts.

## Check it

1. Open Chrome device mode at 390 × 844.
2. Nothing scrolls sideways.
3. Every action can be reached by tapping.
4. Turn the phone sideways. The layout still works.
5. At 1440 wide, the page looks as before.

## Back on phones

While a sheet, dialog, slide-in form or full-screen layer is open on a phone, Back closes the top one instead of leaving the page. Back again closes the next. You need no code for it: `MobileSheet`, `Modal`, `SlideInForm`, alerts and `useMobileLayer` all do it.

A layer your page opens from the URL (a form at `?edit=1`, a details panel in the URL) already closes on Back by going to the previous URL. It is left as it is.
