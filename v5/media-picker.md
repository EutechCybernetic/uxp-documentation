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
