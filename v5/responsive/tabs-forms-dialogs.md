# Tabs, forms and dialogs on phones

## What happens by itself

- **Tabs:** `TabComponent` shows the open tab's content. The tab slider sits at the bottom of the screen. Inside a configuration section, the slider joins the section's bottom bar.
- **Slide-in forms:** every `SlideInForm` opens full screen, over the app header and footer, whatever its `mode` or `containerRef`. The title is at the top, Cancel and Save at the bottom. The phone's Back cancels. `width` and `height` are ignored on phones.
- **Dynamic forms:** `DynamicForm` uses one column. With `renderOptions.renderStyle` set to `tabs`, its buttons join the tab slider.
- **Dialogs:** every `Modal` fills the screen on phones.
- **Wizards:** the step indicator becomes a short step line.
- **Dropdowns and alerts** open as bottom sheets.

You don't need to change anything for this.

## What you do

### 1. Tab title and buttons: use `TabSectionHeader`

Put a tab's title and buttons in a `TabSectionHeader` at the top of the tab.

- On the web it is a row with the title on the left and the buttons on the right.
- On phones the title is hidden, because the slider already shows the tab name. The buttons move into the slider as icons.

```tsx
import { TabSectionHeader, ButtonComponent } from 'uxp/components';

<TabSectionHeader
    title="API Keys"
    actions={<ButtonComponent title="Generate key" leftIcon="fas plus" onClick={generate} />}
/>
```

Give each button a `leftIcon`. On phones only the icon shows. Pressing and holding it shows the title. A button without an icon keeps its label. See [Touch](touch.md).

**In a details panel** (`ObjectSearchComponent` details, its tabs and side tabs such as Documents): the same. On phones the buttons join the panel's bottom toolbar, next to the tab's name. In a side tab on the web, they show as icons in the side tab's header, next to refresh. Don't draw your own button bar inside the tab.

**A tab with several sections** (for example Site Properties: a site image and a map): start each section with `TabSectionHeader section`. The title and the section's buttons stay with the section on every screen. On phones the buttons show as icons.

```tsx
<>
    <TabSectionHeader section title="Site image" actions={<>
        <ButtonComponent title="Change image" leftIcon="fal pencil" onClick={change} />
        <IconButton icon="fal trash" tooltip="Remove image" variant="danger" onClick={remove} />
    </>} />
    <SiteImage />
    <TabSectionHeader section title="Location on map" actions={
        <ButtonComponent title="Set location" leftIcon="fal location-dot" onClick={editMap} />
    } />
    <SiteMap />
</>
```

The shared `profile-image-uploader` (sidebar mode) takes a `title` prop for this.

### 2. Dialog width: use the `width` prop

Set a dialog's web width with `width`. Phones ignore it and show the dialog full screen.

```tsx
<Modal show={open} onClose={close} title="New token" width="43rem">…</Modal>
```

Don't size `.uxpcore_modal` in your SCSS. It stops the dialog filling the phone screen.

### 3. Slide-in form size: use `width` and `height`

```tsx
<SlideInForm mode="modal" width="55rem" height="35rem" … />
```

Phones ignore both values. Don't force the size in SCSS with `!important`.

### 4. Profile picture with an edit badge

Give `ProfileImage` a `badgeIcon` to show a small round badge on the picture. Use it to show that the picture can be changed. It works without hover.

```tsx
<ProfileImage image={url} name={fullName} badgeIcon="fas camera" />
```

### 5. A panel over the page: give `SlideInPanel` a `title`

On phones the title shows in the app header. The footer **Close** bar and the phone's Back close the panel.

```tsx
<SlideInPanel isOpen={open} onClose={close} title={collection.Name}>…</SlideInPanel>
```

Leave `title` out when the content has its own header and close, such as `SlideInForm`.

### 6. Tab content in a details panel: let the panel scroll

On phones the details panel scrolls as one page, and its header slides up as you scroll. Don't give a tab its own `height: 100%` with `overflow: auto`. That adds a second scrollbar.

- A tab with text: leave the height alone.
- A tab with one list: the tab fills the screen. Use `display: flex; flex-direction: column` on the tab, so paging sits at the bottom.

## Don'ts

- Don't build your own heading and button row inside a tab. It stays at the top on phones.
- Don't put fixed widths on content inside dialogs and panels. Use `width: 100%` with a `max-width`.
- Don't show a button only on hover.

## Check it

1. Open Chrome device mode at 390 × 844.
2. Open a page with tabs. The slider sits at the bottom. The tab's buttons show as icons in it.
3. Open a dialog and a slide-in form. Each fills the screen. Its buttons sit at the bottom.
4. At 1440 wide, the title row and dialog widths look as before.
