# importImageFromUrl


Downloads an image link in the browser and returns it as a `File`, so it can be uploaded like a
file the user chose (e.g. a media library, gallery or typed link picked for a profile picture).
Types not in `allowedTypes` are redrawn as JPEG. Throws `ImageImportError` when the site blocks
the download, the link fails, or it isn't an image.



## Installation

```tsx
import { importImageFromUrl } from 'uxp/components';
```

## Signature

```tsx
function importImageFromUrl(link: string, allowedTypes?: string[]): Promise<File>
```

## Examples

```tsx
ts
const file = await importImageFromUrl(pickedUrl);
await upload(file);
```

