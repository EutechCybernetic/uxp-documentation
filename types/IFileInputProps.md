# IFileInputProps


FileInput component props


## Definition

```tsx
interface IFileInputProps extends InputSizeProps, InputStateProps {
    /**
     * The file value - can be a File object or a string URL
     */
    value: File | string

    /**
     * Callback when file changes
     */
    onChange: (file: File, isValid: boolean) => void

    /**
     * Array of allowed MIME types (e.g., ['image/*', 'application/pdf'])
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
}
```

## Usage

```tsx
import { IFileInputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

