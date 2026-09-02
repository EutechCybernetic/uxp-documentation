# IMediaPreviewProps


MediaPreview component props


## Definition

```tsx
export interface IMediaPreviewProps {
    /**
     * The value to preview — a URL, an icon string, or an object URL for a file
     * that has not been uploaded yet.
     */
    value: string

    /**
     * Display name override, as MediaThumb takes it — a `blob:` URL carries no
     * file name of its own.
     */
    name?: string
}
```

## Usage

```tsx
import { IMediaPreviewProps } from 'uxp/components';
```

