# Media Library: Folders, Tags and Sharing

My Media now has folders, tags and sharing. The media picker is redesigned and works on phones. Profile pictures and documents on records use the same picker, and picture rules are checked before upload.

- **Ticket:** [LPVR-1252](https://eutech.atlassian.net/browse/LPVR-1252).
- **Where:** **User app > My Media**, every media picker field, profile pictures (user details and My Profile) and the Documents tab on records.

# What Changed

- **Folders:**
  - Folders can nest up to 3 levels.
  - Each user has a Private folder. Content in it is never shared.
  - Uploads go into the open folder, or into the default upload folder.
- **Tags:** files can be tagged. The tree lists folders and tags. Selecting a tag shows the files with it.
- **Sharing:**
  - Access can be: only me, all users, or chosen user groups.
  - A folder passes its access down to what is in it. A file or a tag can set its own access.
  - **Shared with me** lists what others shared.
  - **Now:** other users can see a file when it is shared with them. Before, each user saw only their own uploads.
- **Bulk actions:** select several files to move them, set tags, set access or delete them.
- **Delete:** removes the library entry only. A file already used somewhere keeps working.
- **Details panel:**
  - A preview by file type: images with zoom and full screen, video, audio, PDF, markdown, JSON and CSV.
  - Audio and video show only their player.
  - Other spreadsheets (for example Excel) have no preview.
  - The description, tags, access and file info.
  - Tags and Access are in the details toolbar. The Private folder has no Access.
- **Media picker:**
  - The sources are the same: my media, gallery, icons, upload and link. Which ones show depends on the field.
  - On phones each step opens full screen.
  - The image rules show as chips: types, pixel range and size.
- **Profile pictures and record pictures:**
  - The account's picture rules are checked before upload: type (JPEG, PNG or GIF), file size, DPI and pixel size. The rules are in **Account Settings > Profile pictures**.
  - A failure shows two lines: what is wrong, then what to use.
  - A picture that is too large can be cropped and resized in the picker.
  - Pictures can come from the camera, a drop or the picker. "Click or drop to replace" shows over an existing picture.
  - The older picture and attachment uploaders now use this same component.
- **Documents tab and page:**
  - Rows show as info cards, with Open and Delete as row actions.
  - Upload is in the tab header (a + icon on the web, the bottom toolbar on phones). It opens the standard upload form for the record.
- **By Design (not bugs):**
  - A picture whose DPI can't be read is not checked for DPI.
  - Files from the library, gallery or a link are converted to JPEG for a profile picture.

# Testing Focus

- **Folders:** create, rename, nest to 3 levels, move files in and out, upload into a folder.
- **Sharing:** share a file, a folder and a tag with all users and with a group. Check as another user, including **Shared with me**. Content in Private is never visible to others.
- **Bulk actions:** move, tags, access and delete on several files.
- **Previews:** one file of each type in the details panel.
- **Profile picture:** set an account rule, then try a picture that breaks it and one that passes. Crop a large picture. Camera on a phone.
- **Documents tab:** upload, open and delete on a record.
- **Regression:** fields that use the media picker still save their value. Turning off "Save uploads to media library" still stops new library entries.
