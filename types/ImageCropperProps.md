# ImageCropperProps


ImageCropper component props


## Definition

```tsx
export interface ImageCropperProps {
    /**
     * The picture to crop. Use `src` instead for a URL.
     */
    file?: File | Blob
    /**
     * A URL of the picture to crop, used when `file` is not given. It is fetched, so it must be
     * same-origin or allow CORS.
     */
    src?: string
    /**
     * Open (dialog mode). Ignored with `inline`.
     * @example true
     */
    show?: boolean
    /**
     * Render inside the host instead of its own dialog
     */
    inline?: boolean
    /**
     * The size and DPI the result must have. 0 or undefined means no limit.
     * @example { minWidth: 500, maxWidth: 1000, minHeight: 500, maxHeight: 1000, minDpi: 100, maxDpi: 200 }
     */
    rules?: IImageCropRules
    /**
     * The DPI written into the result when the rules give no maximum. Without it the picture's
     * own DPI is used (150 when it records none), kept within the rules.
     */
    initialDpi?: number
    /**
     * Dialog title
     */
    title?: string
    /**
     * Start with a round mask (square frames only; the user can toggle it). A round mask saves a
     * round picture: a PNG, transparent outside the circle.
     * @default false
     */
    roundMask?: boolean
    /**
     * Called with the cropped picture (JPEG, or PNG for a PNG source). The cropper stays as it is
     * until the promise settles, then the host closes it.
     * @example Log
     * ```tsx
     * onApply={(file) => console.log('cropped', file)}
     * ```
     */
    onApply: (file: File) => Promise<void> | void
    /**
     * Called when the user cancels or closes the dialog
     */
    onCancel: () => void
    /**
     * Shows "Choose another photo" when the picture is too small for the rules
     */
    onChooseAnother?: () => void
    className?: string
}
```

## Usage

```tsx
import { ImageCropperProps } from 'uxp/components';
```

## Related Types

- [IImageCropRules](../types/IImageCropRules.md)

