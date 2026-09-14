# Media Library (NEW)

One media picker field across the platform for images, icons, documents, video and audio — plus a per-user library of everything uploaded through it.

- **Picker Sources:** Personal media library, image gallery, font icons, upload, and plain URL. Which sources appear depends on the field's allowed media types.
- **My Media:** **User app > My Media** (`/view/user/my-media`) — each user sees only their own uploads, with search and paging. Deleting removes only the library record; already-used file URLs keep working.
- **Account Switch:** **Administration > Account Settings > General > "Save uploads to media library"** — ON by default; turning it off stops new records (existing ones remain, and uploads still work).
- **Testing Focus:**
  - Upload each media type and confirm it appears in My Media and in the picker's library source.
  - Multi-select fields (value becomes a removable card strip) vs single-select (preview then "Select & close").
  - Per-user isolation — user B must never see user A's items.
  - With the account switch off — uploads succeed, no library record is created.
