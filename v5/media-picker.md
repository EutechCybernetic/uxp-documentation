# MediaPicker

`MediaPicker` is the framework's media field — images, icons, documents, videos and audio. It renders an input your users can drop files onto, and opens a full-screen browser backed by five sources: their own media library, the platform image gallery, font icons, a file upload and a plain URL. `ImagePicker` and `IconPicker` are the same component with narrower defaults.

---

## Step 1: Basic Usage

The two required props are `mediaTypes` and the usual `value` / `onChange` pair. The emitted value is always something you can use directly — a URL for files, an icon string (`fas:bell`) for font icons.

```tsx
// src/views/branding/BrandingView.tsx
import React, { useState } from "react";
import { MediaPicker } from "uxp/components";

const BrandingView: React.FC = () => {
    const [logo, setLogo] = useState("");

    return (
        <MediaPicker
            mediaTypes={["Image"]}
            value={logo}
            onChange={(value) => setLogo(value as string)}
            placeholder="Choose a logo"
        />
    );
};

export default BrandingView;
```

`mediaTypes` drives two things: which sources appear, and what the upload accepts. Asking for `Image` turns on the gallery; asking for `Icon` turns on the font-icon browser.

---

## Step 2: Selecting Several Values

Set `multiple` and `value` becomes an array. The chosen items appear as a scrolling strip of cards beneath the field, each with its own remove button.

```tsx
const [attachments, setAttachments] = useState<string[]>([]);

<MediaPicker
    mediaTypes={["Image", "Document"]}
    value={attachments}
    onChange={(value) => setAttachments(value as string[])}
    multiple
    fullWidth
/>
```

In single mode, clicking an item previews it and a **Select & close** button in the dialog header commits it. In multiple mode, clicking an item adds it to the selection straight away and a separate expand button on each card opens the preview.

---

## Step 3: Choosing Which Sources Appear

By default library, upload and URL are always on; gallery is on when `Image` is among the media types, and the icon browser when `Icon` is. Pass `sources` to override any of them individually — the ones you don't mention keep their default.

```tsx
// An image field that only allows the user's own uploads — no stock gallery,
// no pasted URLs.
<MediaPicker
    mediaTypes={["Image"]}
    value={image}
    onChange={(v) => setImage(v as string)}
    sources={{ gallery: false, url: false }}
/>
```

| Source | Key | On by default when |
|--------|-----|--------------------|
| My media library | `library` | always |
| Image gallery | `gallery` | `mediaTypes` includes `Image` |
| Font icons | `icons` | `mediaTypes` includes `Icon` |
| Upload | `upload` | always |
| URL | `url` | always |

When only one source ends up enabled the sidebar rail is hidden entirely, so a single-source picker reads as a plain browser rather than a tabbed dialog.

Use `defaultSource` to choose which one opens first.

---

## Step 4: Restricting Uploads

`allowedTypes` is the same MIME/extension list `FileInput` takes. Leave it off and it is derived from `mediaTypes`:

| `mediaTypes` | Derived restriction |
|---|---|
| `['Image']` or `['Icon']` | `['image/*']` |
| `['Video']` | `['video/*']` |
| `['Audio']` | `['audio/*']` |
| includes `'Document'` | none — anything is accepted |

Set it explicitly when you need something narrower than a whole MIME family:

```tsx
<MediaPicker
    mediaTypes={["Document"]}
    value={report}
    onChange={(v) => setReport(v as string)}
    allowedTypes={[".pdf", ".csv", "application/vnd.ms-excel"]}
/>
```

Entries starting with `.` match the file name, which is how you accept formats browsers report no MIME type for.

---

## Step 5: Field Presentation

`variant` picks how the field itself looks. Both accept dropped files.

```tsx
// A single compact row — the browse affordance sits inside the field
<MediaPicker variant="compact" ... />

// A full drop area with a browse link underneath
<MediaPicker variant="drop-zone" ... />
```

Clicking a compact field opens the browser rather than the OS file dialog. The dialog's own Upload source is the way to a file picker — two competing file dialogs would only confuse.

---

## Step 6: The Media Library and `saveToLibrary`

Files uploaded through the picker are recorded in the signing-in user's own media library, so they can be found again from any other picker. The library is strictly per-user: one user never sees another's uploads.

Whether uploads are recorded is an **account-wide setting** — *System → Account Settings → General → "Save uploads to media library"*. It is on unless an administrator turns it off.

Override it per field with `saveToLibrary`:

```tsx
// This field's uploads are never recorded, whatever the account setting says
<MediaPicker
    mediaTypes={["Document"]}
    value={draft}
    onChange={(v) => setDraft(v as string)}
    saveToLibrary={false}
/>
```

Use `false` for scratch or sensitive uploads that would only clutter the user's library. Use `true` to record uploads even where an administrator has turned tracking off account-wide. Omit it to follow the account setting, which is the right default for almost every field.

Users manage their own uploads at **My Media** (`/view/user/my-media`), reachable from a link at the bottom of the library source. Deleting a row there removes the record only — files already referenced by a saved URL keep resolving.

> The account setting is read once per page load. An administrator changing it won't reach an already-open session until it reloads.

### Inside the dialog

- **Library toolbar.** A search box, then a chip per type (All + each type, shown when the field allows more than one type), then an **Upload** button that opens the Upload source.
- **Phones.** The search and the type filter move to the bottom toolbar: a search button, and a filter button (with a dot while a type is chosen) that opens a sheet of types.
- **Loading and empty.** Placeholder tiles show while the first page loads. An empty library shows "No files yet" with an **Upload a file** button. A search with no results says so.
- **Details.** Previewing a library file shows its type, size, pixels (images) and the date it was added.
- **Upload in two steps.** First choose files: a drop zone and a row per file with its size and Remove. Then upload: the drop zone goes and each row shows its own state (waiting, a progress bar, uploaded, or failed with the reason, **Try again** and **Remove**). Files that worked are selected even when others fail. **Add more files** returns to the first step.
- **Errors.** One compact red block at the top of the pane, with the real reason when the server gives one. A library that fails to load offers **Try again**.

Uploads land in `media-library/` in the content store. Override with `uploadPath` when a module wants its own folder.

### Older deployments

UXP ships from a CDN and updates everywhere at once; the server updates per account. A deployment can therefore be running this picker against a server with no media library at all.

The picker handles that itself — you don't need to configure anything:

- The **Library source disappears** from the rail, and the dialog opens on whatever source comes next. If that leaves a single source, the rail hides too.
- **Uploads still work.** The file transfer uses an endpoint that predates all of this, so the picker still returns a usable URL — only the library *record* is skipped.
- `saveToLibrary={true}` **cannot force a record** onto a server that has nowhere to put one. Capability outranks the prop.
- Gallery, font icons, upload and URL are unaffected.

The check is one cached request, made the first time a picker that wants the library is opened. A picker with `sources={{ library: false }}` never makes it. A transient network failure is never mistaken for an old server — only a definite "no such app, model or service" hides the source.

---

## Step 7: The Dialog on Its Own

`MediaPickerModal` is the browser without the field, for triggers of your own.

```tsx
import { MediaPickerModal } from "uxp/components";

const [browsing, setBrowsing] = useState(false);

<>
    <Button title="Change image" onClick={() => setBrowsing(true)} />

    <MediaPickerModal
        show={browsing}
        onClose={() => setBrowsing(false)}
        onSelect={(url) => setImage(url)}
        mediaTypes={["Image"]}
    />
</>
```

For multiple selection use `multiple` with `onSelectMultiple` and seed the current values via `initialSelection`.

---

## Step 8: ImagePicker and IconPicker

Both are `MediaPicker` with narrower defaults, and both take the same `sources`, `allowedTypes` and `defaultSource` props.

**ImagePicker** — a URL input with a browse button, opening on the gallery:

```tsx
import { ImagePicker } from "uxp/components";

<ImagePicker
    value={imageUrl}
    onChange={setImageUrl}
    sources={{ library: false }}   // gallery, upload and URL only
/>
```

**IconPicker** — an icon field opening on the font-icon browser. Because an `Icon` renders image URLs as happily as glyphs, the library, upload and URL sources are available too. Turn them off for a field that must hold a real font icon:

```tsx
import { IconPicker } from "uxp/components";

<IconPicker
    value={icon}
    onChange={setIcon}
    sources={{ library: false, upload: false, url: false }}
/>
```

---

## Step 9: The Camera

The `camera` source takes a photo with the device camera. It is off unless you turn it on.

```tsx
<MediaPicker mediaTypes={['Image']} value={photo} onChange={setPhoto} sources={{ camera: true }} />
```

- A live preview, **Capture**, **Retake** and **Use photo**. The photo is a JPEG.
- Devices with more than one camera get a switch button.
- When the camera can't be used, it says why: the page isn't on https, access is blocked, or there is no camera. It offers **Try again** and **Choose from this device**.
- The photo uploads like a chosen file (or through `onUpload`).

`CameraCapture` is the camera on its own, for other places that need a photo:

```tsx
import { CameraCapture } from 'uxp/components';

<CameraCapture show={open} onClose={() => setOpen(false)} onCapture={async (file) => { await save(file); setOpen(false); }} />
```

It opens as a dialog (full screen on phones), or renders `inline` inside your own layout.

## Step 10: Storing the Value Yourself

By default uploads go to the content store and the field holds their URL. To store files your own way (an object's picture, an attachment), pass hooks:

- `onUpload(file, source)`: uploaded and camera files come to you. Return the value the field should hold.
- `onPick({ value, source, meta })`: a library, gallery, icon or link pick comes to you before it is committed. Return a value to hold instead, or nothing to keep the pick. A thrown error shows in the dialog and keeps it open. Gallery picks carry `meta` (`author`, `pageUrl`, `downloadLocation`).

To turn a picked link into a file, use `importImageFromUrl(url)`. It downloads the image in the browser and redraws other image types as JPEG. Sites that block other sites from downloading their images (CORS) can't be imported; it throws an error with `code: 'blocked'`.

```tsx
import { importImageFromUrl } from 'uxp/components';

<MediaPicker
    mediaTypes={['Image']}
    value={value}
    onChange={setValue}
    sources={{ camera: true }}
    onUpload={async (file) => saveAsProfilePicture(file)}
    onPick={async ({ value }) => saveAsProfilePicture(await importImageFromUrl(value))}
/>
```

### Checking a value before it is used

`validate` gets an `IMediaCheckInfo` (`value`, `name`, `mimeType`, `size`, `width`, `height`; pixels for images only). It runs on a previewed item or typed link, on each chosen file, on a camera photo and on a file dropped on the field. Return a message to block the value: line 1 is the problem, line 2 (after `\n`) a hint. The dialog shows it in a red block and disables the commit. Refused files stay out of the upload. Pass `onRefreshRules` to add a header button that reloads your rules and runs the checks again.

```tsx
<MediaPicker
    mediaTypes={["Image"]}
    value={logo}
    onChange={(v) => setLogo(v as string)}
    validate={(info) => info.width > 800 ? `Image is ${info.width} px wide\nUse one 800 px wide or less` : undefined}
/>
```

### Crop and resize

Pass `cropRules` to let people fix an image that fails `validate`. The red block then shows "Crop and resize". It opens the `ImageCropper` with the picture: move and resize the frame, zoom, rotate, pick a shape (Square, Original, Free), and set the size and DPI. The size starts at the largest the rules allow. The DPI starts at the picture's own, kept within the rules. The cropped file is checked again. A chosen file is replaced in the upload list. A previewed item, typed link or camera photo is uploaded like a chosen file and selected. Each rule is optional; 0 or missing means no limit. A previewed picture must allow CORS, or the crop shows an error.

```tsx
<MediaPicker
    mediaTypes={["Image"]}
    value={photo}
    onChange={(v) => setPhoto(v as string)}
    validate={(info) => info.width !== info.height ? `Image is not square\nCrop it to a square` : undefined}
    cropRules={{ minWidth: 500, maxWidth: 1000, minHeight: 500, maxHeight: 1000, minDpi: 100, maxDpi: 200 }}
/>
```

`ImageCropper` is exported on its own too. It takes `file` (or `src`), `rules`, `initialDpi`, `onApply(file)`, `onCancel()` and `onChooseAnother()`. It opens as a dialog, or renders `inline`. The result is a JPEG (PNG for a PNG source) with the DPI written into it. `setImageDpi(blob, dpi)` writes a DPI into any JPEG or PNG.

```tsx
<ImageCropper
    show={!!file}
    file={file}
    rules={{ minWidth: 500, minHeight: 500 }}
    onApply={async (cropped) => { await save(cropped); setFile(null); }}
    onCancel={() => setFile(null)}
/>
```

---

## MediaPicker Props

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `mediaTypes` | `MediaType[]` | required | `'Image' \| 'Icon' \| 'Document' \| 'Video' \| 'Audio'`. Drives the sources and the upload restriction |
| `value` | `string \| string[]` | required | A usable URL, or an icon string. An array when `multiple` is set |
| `onChange` | `(value: string \| string[]) => void` | required | Called with the new value |
| `multiple` | `boolean` | `false` | Let the user pick several values |
| `sources` | `Partial<Record<MediaPickerSource, boolean>>` | — | Turn individual sources on/off |
| `defaultSource` | `MediaPickerSource` | `'library'` | Source the dialog opens on |
| `allowedTypes` | `string[]` | derived from `mediaTypes` | MIME/extension restriction for uploads |
| `variant` | `'compact' \| 'drop-zone'` | `'compact'` | How the field is presented |
| `saveToLibrary` | `boolean` | account setting | Override whether uploads are recorded |
| `uploadPath` | `string` | `'media-library/'` | Content-store folder uploads go to |
| `placeholder` | `string` | — | Empty-state text for the field |
| `searchParameters` | `{ [key: string]: any }` | — | Extra parameters for the gallery search (e.g. `{ orientation: 'landscape' }`) |
| `className` | `string` | — | Extra CSS class on the root |
| `onUpload` | `(file, source: 'upload' \| 'camera') => Promise<string>` | — | Store uploaded and camera files yourself; return the value to hold |
| `onPick` | `(pick: IMediaPickerPick) => Promise<string \| void>` | — | Handle a library, gallery, icon or link pick before it is committed |
| `validate` | `(info: IMediaCheckInfo) => string \| undefined` | — | Check a value before it is used. Return a message to block it (line 1 problem, line 2 hint), or undefined |
| `onRefreshRules` | `() => void \| Promise<void>` | — | Shows a refresh button in the dialog header; awaited, then the checks run again |
| `cropRules` | `IImageCropRules` | — | Size and DPI rules for "Crop and resize" on an image that fails `validate`. No crop button without it |

Standard `InputSizeProps` (`width`, `fullWidth`, `minWidth`, …) and `InputStateProps` (`disabled`, `readOnly`, `isValid`) apply as they do to every other input.

---

## MediaPickerModal Props

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `show` | `boolean` | required | Whether the dialog is open |
| `onClose` | `() => void` | required | Called when it dismisses |
| `onSelect` | `(value: string) => void` | — | Single-select result; the dialog closes after it |
| `multiple` | `boolean` | `false` | Let the user pick several values before confirming |
| `initialSelection` | `string[]` | — | Values already selected, re-seeded on every open |
| `onSelectMultiple` | `(values: string[]) => void` | — | Multi-select result, on confirm |
| `mediaTypes` | `MediaType[]` | required | As above |
| `sources` | `Partial<Record<MediaPickerSource, boolean>>` | — | As above |
| `defaultSource` | `MediaPickerSource` | `'library'` | As above |
| `allowedTypes` | `string[]` | derived | As above |
| `saveToLibrary` | `boolean` | account setting | As above |
| `uploadPath` | `string` | `'media-library/'` | As above |
| `searchParameters` | `{ [key: string]: any }` | — | As above |
| `currentValue` | `string` | — | The value the field holds; the icon source badges it |
| `validate` | `(info: IMediaCheckInfo) => string \| undefined` | — | As above |
| `onRefreshRules` | `() => void \| Promise<void>` | — | As above |
| `cropRules` | `IImageCropRules` | — | As above |

---

## Wrapper Props

`ImagePicker` and `IconPicker` keep every prop they had. These are additions, and omitting them leaves behaviour exactly as it was.

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `sources` | `Partial<Record<MediaPickerSource, boolean>>` | all on | Turn individual sources on/off |
| `allowedTypes` | `string[]` | `['image/*']` | Upload restriction |
| `defaultSource` | `MediaPickerSource` | `'gallery'` / `'icons'` | Source the dialog opens on |

---

## Next Steps

- [Core Components](./core-components.md) — the rest of the built-in component library
- [Styling](./styling.md) — theme variables and BEM conventions for your own fields
- [External Components](./external-components.md) — the System app's attachment and profile-image components, for files attached to a specific object
