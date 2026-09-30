# The media library

Every file a user uploads through a [MediaPicker](./media-picker.md) field can be recorded in a personal media library, so the same file can be found and reused from any other picker without uploading it again. This page covers the library itself — its model, its view and its isolation rules. For the picker field that puts files into it and reads them back, see [Media Picker](./media-picker.md).

The library is strictly **per-user**: one user never sees, lists or deletes another user's records.

---

## The MediaItem model

Records live in the System app model `MediaItem`, backed by the `MediaItems` table. Each row describes one uploaded file:

| Attribute | Notes |
|---|---|
| `Key` | Primary key |
| `Name` | The file name shown in the library |
| `Path` | Content-store path of the file (resolved to a URL for display) |
| `MediaType` | `Image`, `Icon`, `Document`, `Video` or `Audio` |
| `MimeType` | The uploaded file's MIME type |
| `Size` | Size in bytes |

The model is `record_created` / `record_modified`, so the built-in **Create** action stamps `CreatedUserKey` from the session. That user key is the owner, and it is the only thing that ties a record to a person — nothing owner-related is ever taken from the caller's arguments.

## Reachable actions

The library deliberately exposes a **minimal surface**. Only two actions are supported; the generic list and edit actions are disabled outright so no request can enumerate or alter another user's records.

| Service | Purpose |
|---|---|
| `MediaItem:Create` | Records an uploaded file. Ownership is stamped server-side from the session; no user key is sent. |
| `MediaItem:MyMedia` | One page of the caller's own uploads — the only supported read path. Filters by name (`q`) and media types, with `max`/`last` paging, always scoped to the session's `CreatedUserKey`. |
| `MediaItem:Delete` | Removes one record, but only after confirming the caller owns it. |

`All`, `Update`, `SimpleList` and `Details` all raise **"Not supported"**. There is no owner-safe way to list everyone's rows or to edit a row by a client-supplied key, and nothing needs one: a library row is written once by Create and removed by Delete, never edited.

`Delete` removes the **record only** — the uploaded file is left in the content store on purpose, so a URL already handed out (a saved logo, an attached document) keeps resolving.

## The My Media view

Users manage their own uploads at **My Media**, `/view/user/my-media` (the User app's `MyMediaView`). It is a standard object-search view over `MediaItem:MyMedia`, with search, paging and a per-row **Delete** action. Because the service is session-scoped, the view can only ever show the signed-in user's own files.

The MediaPicker's library source links to this same view from a link at the bottom of the source.

## How it relates to the MediaPicker field

The [MediaPicker](./media-picker.md) is the only writer. When a user uploads through the field:

- The file transfer happens first and returns a usable URL.
- If uploads are being recorded, the picker calls `MediaItem:Create` with the file's name, path, type, MIME type and size. The URL is returned to the field either way, so a failed or skipped record never breaks an upload.

Whether uploads are recorded is an **account-wide setting** — *System → Account Settings → General → "Save uploads to media library"* — read once per page load. A field can override it with the `saveToLibrary` prop. See [Media Picker › The Media Library and `saveToLibrary`](./media-picker.md#step-6-the-media-library-and-savetolibrary) for the field-side detail, including how the picker behaves against an older server that has no media library at all.

## Per-user isolation, in short

- The owner is always the session's `CreatedUserKey`, re-derived on every read and write — never trusted from arguments.
- `MyMedia` filters on that owner; `Delete` verifies it before removing anything.
- The actions that would return or edit arbitrary rows (`All`, `Update`, `SimpleList`, `Details`) are disabled.

Together these mean the only records any request can reach are the caller's own.

---

## Next steps

- [Media Picker](./media-picker.md) — the field that reads from and writes to the library
- [File Uploads](./file-upload.md) — the upload primitives underneath the picker
