# File Uploads

`useFileUpload` is the one hook for sending a file to the platform content store. You call it the same way for a 2MB image and a 2GB video. It decides internally whether to send the file in a single request or split it into chunks, based on the account's settings.

---

## Step 1: Basic Usage

The hook returns an `upload` function plus the three pieces of state you need to render feedback.

```tsx
// src/views/notes/NoteAttachment.tsx
import React, { useState } from "react";
import { FileInput, useFileUpload } from "uxp/components";

const NoteAttachment: React.FC = () => {
    const { upload, isUploading, progress, error } = useFileUpload();
    const [file, setFile] = useState<File | string>("");
    const [url, setUrl] = useState("");

    async function onUpload() {
        if (!file || typeof file === "string") return;
        const result = await upload(file, { path: "notes/attachments/" });
        setUrl(result.url);
    }

    return (
        <>
            <FileInput value={file} onChange={(f) => setFile(f)} fullWidth />
            <button onClick={onUpload} disabled={!file || isUploading}>Upload</button>
        </>
    );
};

export default NoteAttachment;
```

`path` is the folder in the content store and is the only required option. `upload` resolves with `{ url, fileName }`, where `url` is absolute and ready to store or render.

Pass `fileName` if you want to control the stored name. By default the file is stored as `file-<uuid>.<ext>`, so two users uploading `photo.jpg` never collide.

---

## Step 2: Showing Progress

`progress` is a number from 0 to 100 and works on both upload paths. Pair it with `ProgressBar`.

```tsx
import { ProgressBar, useFileUpload } from "uxp/components";

const { upload, isUploading, progress, error } = useFileUpload();

{isUploading && (
    <ProgressBar value={progress} indeterminate={!progress} showLabel />
)}
```

Three details worth knowing before you ship this.

**Use `indeterminate={!progress}`.** A single-request upload reports progress from the browser's own upload stream. When the request has no content length the browser reports nothing, and `progress` stays at 0 for the whole transfer. The indeterminate bar keeps moving in that case instead of sitting frozen at zero.

**A fast upload finishes before the user sees the bar.** On a local network a small file can complete in under 100ms, which reads as a flicker. If that bothers you, hold `isUploading` true for a few hundred milliseconds after it resolves.

**Chunked uploads step rather than stream.** The chunked path reports at most twice a second, so the bar advances in visible jumps. This is normal and not a stall.

You can also pass your own `onProgress` callback in the options if you want the number somewhere other than the hook's state.

```tsx
await upload(file, {
    path: "notes/attachments/",
    onProgress: (percent) => console.log(`${percent}%`),
});
```

---

## Step 3: Size Limits

Two account settings decide what happens to a file, and both are set by whoever deploys the platform.

| Setting | What it does |
|---|---|
| `MaxUploadFileSizeMB` | Largest file allowed in a single request |
| `LargeUploadFileSizeMB` | File size above which the upload is split into chunks. 0 means never chunk |
| `MaxUploadChunkSizeMB` | Size of each chunk |

The size cap applies to **single-request uploads only**. When chunking is switched on, a file above the chunk threshold is split across many small requests, so the cap does not apply to it and there is effectively no limit.

Use `getUploadSizeLimitMB` to get the limit that actually applies, rather than reading the setting directly. It returns 0 when there is no limit.

```tsx
import { FileInput, getUploadSizeLimitMB, useUXPContext } from "uxp/components";

const context = useUXPContext();

<FileInput
    value={file}
    onChange={(f) => setFile(f)}
    maxSizeMB={getUploadSizeLimitMB(context)}
    fullWidth
/>
```

`FileInput` then rejects an oversized file the moment it is picked, the same way it rejects a disallowed type. It shows an invalid state and hands your `onChange` a `null` file, so nothing is uploaded and the user finds out immediately instead of after a long transfer.

---

## Step 4: Handling Errors

`error` holds the message from the last failed upload. It is cleared when a new upload starts.

```tsx
const { upload, error } = useFileUpload();

{error && <div className="my-upload-error">{error}</div>}
```

`upload` also rejects, so wrap it if you need to react to a failure rather than just display it.

```tsx
try {
    const result = await upload(file, { path: "notes/attachments/" });
    setUrl(result.url);
}
catch (e) {
    // the hook has already set `error`; handle the failure here if you need to
}
```

Two failures you should expect:

- **Too large.** If a file over the cap reaches the server, the request is rejected and the message names the limit. Checking at pick time with `getUploadSizeLimitMB` avoids this entirely.
- **Type not allowed.** Administrators can restrict which file extensions an account accepts. The server rejects anything outside that list, whatever the upload path.

---

## Uploading Outside a Component

`uploadFile` is the same logic without the React state, for code that cannot call a hook.

```tsx
import { uploadFile } from "uxp/components";

const { url } = await uploadFile(context, file, { path: "notes/attachments/" });
```

It takes the context as its first argument and behaves identically, including the small/chunked decision. You get no `isUploading` or `progress` state, but you can still pass `onProgress`.

---

## See Also

- [MediaPicker](media-picker.md) — a complete media field with a library, gallery, icons and upload already built in. Prefer it over a hand-built upload field when you want a media picker rather than a plain file input.
- [Core UXP Components](core-components.md) — `FileInput` and `ProgressBar` reference.
