# CameraCaptureProps


CameraCapture component props


## Definition

```tsx
export interface CameraCaptureProps {
    /**
     * Open (dialog mode). Ignored with `inline`: an inline camera runs while it is mounted.
     * @example true
     */
    show?: boolean
    /**
     * Render inside the host (e.g. a tab of the media picker) instead of its own dialog
     */
    inline?: boolean
    /**
     * Called with the photo (JPEG) when the user picks "Use photo". The camera stays as it is
     * until the promise settles, then the host closes it.
     */
    onCapture: (file: File) => Promise<void> | void
    /**
     * Dialog mode: called when the user closes it
     */
    onClose?: () => void
    /**
     * Shows "Choose from this device" when the camera can't be used
     */
    onChooseFile?: () => void
    /**
     * Which camera to start with: the front one ('user') or the back one ('environment')
     * @default 'user'
     */
    facingMode?: 'user' | 'environment'
    /**
     * Dialog title
     */
    title?: string
    className?: string
}
```

## Usage

```tsx
import { CameraCaptureProps } from 'uxp/components';
```

