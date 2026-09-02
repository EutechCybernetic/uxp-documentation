# IFileInputProps


FileInput component props


## Definition

```tsx
interface IFileInputProps extends InputSizeProps, InputStateProps {
    /**
     * The file value - can be a File object or a string URL.
     * Optional in headless (`hidden`) mode where no preview is rendered.
     */
    value?: File | string

    /**
     * Callback when file changes
     */
    onChange: (file: File, isValid: boolean) => void

    /**
     * Let the user pick several files at once.
     * @default false
     */
    multiple?: boolean

    /**
     * Multi-select callback — every picked/dropped file, and whether all of
     * them passed `allowedTypes`. Only used when `multiple` is set; without it
     * a multi-pick falls back to `onChange` with the first file.
     */
    onFilesChange?: (files: File[], allValid: boolean) => void

    /**
     * Array of allowed MIME types (e.g., ['image/*', 'application/pdf']) and/or
     * file extensions (e.g., ['.rpt', '.csv']) for formats without a standard
     * MIME type. Also used to filter the OS file picker (accept attribute).
     */
    allowedTypes?: string[]

    /**
     * Preview configuration
     */
    preview?: {
        showName?: boolean // default false
        showPreview?: boolean // default true
    }

    /**
     * Additional class name
     */
    className?: string

    /**
     * Custom icon for drop area
     */
    dropAreaIcon?: IconProp

    /**
     * Custom label for drop area
     */
    dropAreaLabel?: string

    /**
     * Compact mode — renders as a single input row (icon + label) instead of a tall drop-zone
     */
    compact?: boolean

    /**
     * Headless mode — renders no visible UI, only the hidden native input.
     * Pair with a ref and call `open()` to launch the file picker from your
     * own trigger element (e.g. clicking an avatar). Validation, allowedTypes
     * and the accept filter still apply.
     */
    hidden?: boolean

    /**
     * When true, renders an "or enter a URL" text input below the drop-zone so a
     * value can be supplied either by picking/dropping a file OR by pasting a URL.
     * The current string `value` is shown as the preview. File picks still fire
     * `onChange`; typed URLs fire `onUrlChange`.
     */
    allowUrl?: boolean

    /**
     * Placeholder for the URL input (only used when `allowUrl` is set).
     */
    urlPlaceholder?: string

    /**
     * Fired as the user types into the URL input (only used when `allowUrl` is set).
     */
    onUrlChange?: (url: string) => void

    /**
     * Node rendered in a separator suffix slot at the end of the field
     * (compact mode only) — e.g. a browse trigger.
     */
    suffix?: React.ReactNode

    /**
     * Omit the compact-mode prefix icon.
     */
    hidePrefixIcon?: boolean

    /**
     * Called when the field is clicked instead of opening the OS file picker.
     * Drag-and-drop still applies.
     */
    onFieldClick?: () => void

    /**
     * How the image/video preview fits its box. Maps to CSS `object-fit`.
     * Defaults to `'contain'` (whole image visible, letterboxed).
     */
    previewObjectFit?: React.CSSProperties['objectFit']
}
```

## Usage

```tsx
import { IFileInputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

