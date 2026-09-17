# Large File Uploads

Files that are too big to send in one request are now split into chunks and sent piece by piece. Uploading is one action for the user either way, and nothing about the upload screens changes.

- **Where:** anywhere a file is uploaded — the media field on a form, the upload tab of the media browser, and any app screen that offers a file upload.

# What Changed

- **Before:** every upload was sent as a single request. A large file either took a long time and then failed with an unhelpful message, or was refused by the server outright. The size at which this happened was not shown anywhere.
- **Now:** a file above a configured size is split into chunks. Each chunk is sent separately, so the size that used to fail now succeeds.
- **Same result either way:** the stored file, its address and its behaviour are identical whichever way it was sent. Virus scanning and the allowed file type list still apply to both.
- **Off by default:** chunked uploading is only used when a deployment turns it on. An account without it behaves exactly as it did before.

# Size Limits

- **Too large is refused immediately:** a file above the account's limit is refused the moment it is chosen. The field turns red, a message names the limit, and nothing is uploaded. The user is not left waiting for a transfer that cannot succeed.
- **The limit applies to single uploads only:** when chunked uploading is on, a large file is split instead of refused, so the limit does not apply to it.
- **The server refuses too:** if an oversized file reaches the server anyway, it is rejected with a message naming the limit rather than a general failure page.

# Progress

- **A progress bar is shown while a file uploads.** It reports the whole file, not the current chunk, so it runs from start to finish once.
- **Chunked uploads advance in steps.** The bar moves in visible jumps rather than flowing continuously. That is expected and is not a stall.

# Cleanup

- **Fixed:** parts of a chunked upload were left on the server after the upload finished, and after a failed one. They were never removed, so disk use grew with every large upload.
- **Now:** the parts are removed once the file is assembled, and also when an upload fails.

# Testing Focus

- **Large file succeeds:** with chunked uploading on, upload a file larger than the chunk threshold. It completes, and the stored file opens correctly and is the same size as the original.
- **Small file unchanged:** upload a small file. It behaves exactly as before.
- **Too large is refused at once:** with chunked uploading off, choose a file above the account limit. It is refused as soon as it is chosen, with a message naming the limit, and no upload starts.
- **Limit does not block chunked uploads:** with chunked uploading on, choose a file above the account limit. It is accepted and uploads.
- **Progress:** watch the bar during a large upload. It advances and reaches the end.
- **Media library:** upload a large file through the media field. It appears in the library afterwards with the correct name and size.
- **File types:** upload a file of a type the account does not allow. It is still refused, whichever size it is.
- **Nothing left behind:** after several large uploads, and after cancelling or failing one, the server keeps no leftover parts.
- **Regression:** an account with chunked uploading switched off behaves exactly as it did before this release.
- **See Also:** [Media Library](media-library.md).
