# IGalleryPickMeta


A gallery photo's details, given with the pick (MediaPicker `onPick`)


## Definition

```tsx
export interface IGalleryPickMeta {
    /** The photographer's name */
    author?: string
    /** The photo's page on the gallery site */
    pageUrl?: string
    /** The gallery's download-report address (Unsplash `links.download_location`) */
    downloadLocation?: string
}
```

## Usage

```tsx
import { IGalleryPickMeta } from 'uxp/components';
```

