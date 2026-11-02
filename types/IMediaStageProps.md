# IMediaStageProps


MediaStage component props


## Definition

```tsx
export interface IMediaStageProps {
    /**
     * The media value to show (a URL, an icon string or an object URL). Leave it out for the empty stage.
     */
    value?: string

    /**
     * Known media type (the library reports one per row)
     */
    type?: MediaType

    /**
     * Display name (a `blob:` URL carries none)
     */
    name?: string

    /**
     * What the bar at the bottom shows, e.g. the name, type, pixels and size
     */
    info?: React.ReactNode

    /**
     * Buttons at the right of the bar, e.g. Retake
     */
    actions?: React.ReactNode

    /**
     * Shown in the middle when there is no value, e.g. "Choose a file to preview"
     */
    empty?: React.ReactNode

    /**
     * Shows a close button at the top right, e.g. to go back to the list
     */
    onClose?: () => void

    /** Additional class name */
    className?: string
}
```

## Usage

```tsx
import { IMediaStageProps } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

