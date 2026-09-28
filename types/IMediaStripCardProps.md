# IMediaStripCardProps


MediaStripCard component props


## Definition

```tsx
export interface IMediaStripCardProps {
    /**
     * The value to render — a URL, an icon string, or an object URL for a file
     * that has not been uploaded yet.
     * @example "/content/media/chiller-01.png"
     */
    value: string

    /**
     * Display name override. A `blob:` URL carries no file name, so callers
     * showing picked files pass the File's name here.
     */
    name?: string

    onRemove?: () => void

    /**
     * @example "Remove"
     */
    removeTitle: string
}
```

## Usage

```tsx
import { IMediaStripCardProps } from 'uxp/components';
```

