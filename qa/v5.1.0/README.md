# v5.1.0

New features on top of [v5.0.0](../v5.0.0/README.md) and [v5.0.1](../v5.0.1/README.md); everything there still applies.

## Contents

- [Page View Analytics](page-view-analytics.md)
- [Media Library](media-library.md)
- [Widget Designer](widget-designer.md)
- [Dashboard Links: View, Symlink and Access](dashboard-view-links.md)
- [Accounts with More Than One Domain](multiple-domains.md)
- [Navigation: Importing Keeps Your Place in the Tree](navigation-import-refresh.md)
- [Large File Uploads](large-file-uploads.md)
- [Storybook: Component Playground and Embeds](storybook.md)
- [Data Explorer](data-explorer.md)
- [Lucy: Model Designer and Connectors](lucy-model-designer.md)
- [Object Search Widget (Beta)](object-search-widget.md)
- [Digital Twin App](digital-twin.md)
- [5.0.3 bug fixes](../v5.0.3/README.md)

# Bug Fixes

Each entry says what was wrong and what changed, so tests can be planned from it.

## System

### Profile pictures: readable upload errors, v4 size message, Take a picture

| | |
|---|---|
| **Where:** | My Profile (the avatar) and Users > a user > **Profile Image**. Validation is set in Administration > General Settings > **Profile Pictures**. |
| **Issue:** | When an upload failed, for example a picture outside the Profile Picture Validation limits, the error showed as unreadable content instead of the reason. The size check used a fallback of 5MB and its own wording, not the v4 message. v4 had a **Take a picture** option. v5 did not. |
| **Ticket:** | [LPVR-1007](https://eutech.atlassian.net/browse/LPVR-1007) |
| **Fix:** | A failed upload now shows the server's reason, for example "The uploaded photo is too wide" followed by the allowed size or resolution. A file over the upload limit is refused as soon as it is picked, with the v4 message: "An error occurred while uploading. The file you specified is probably too large. It should be less than 2MB." The limit is `MaxUploadFileSizeMB` in the iviva config. Nothing is uploaded in that case. |
| **New:** | **Take a picture.** On My Profile it is a video icon on the avatar, shown on hover. On the user page it is a button next to **Upload Image**; click **Change Image** first when a picture is already set. It opens the camera with **Capture**, then **Retake** or **Upload Image**. The captured picture goes through the same checks as a file, including Profile Picture Validation. The camera turns off when the dialog closes or a picture is captured. |
| **By design:** | The camera only works on an https address, the same as v4. On http the dialog shows "Sorry - Your camera cannot be accessed right now because your connection isn't secure" and no camera. If the browser is denied camera access or has no camera, the dialog says so. Accepted formats are JPEG, PNG and GIF. WebP is no longer offered, because the server never accepted it. When chunked uploading is on (`LargeUploadFileSizeMB` above 0), large files are split instead of refused, so there is no size limit, the same as v4. When `MaxUploadFileSizeMB` is not set there is no limit. |
| **Worth checking:** | Both screens. Files just under and just over the limit. Validation on with maximum width and height, and with minimum resolution. Pictures that pass validation still upload and replace the old one. Take a picture on https and on http. Deny camera permission in the browser. |
