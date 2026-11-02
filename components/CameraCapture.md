# CameraCapture


Takes a photo with the device camera, then shows it with retake and "Use photo".
Phones open their own camera app, so the photo is the phone's full-quality photo.
Elsewhere it shows a live preview (landscape, up to 1080p) and saves the frame shown, full size,
as a JPEG `File`. Switches cameras when there are several.
When the camera can't be used (not https, access blocked, no camera) it shows why, with
"Try again" and, when `onChooseFile` is given, "Choose from this device".

Opens as a dialog (full screen on phones), or renders `inline` inside another component.



## Installation

```tsx
import { CameraCapture } from 'uxp/components';
```

## Signature

```tsx
const CameraCapture: React.FunctionComponent<CameraCaptureProps>
```

## Examples

```tsx
tsx
<CameraCapture show={open} onClose={() => setOpen(false)} onCapture={async (file) => { await upload(file); setOpen(false); }} />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|No|-|true|
|inline|boolean|No|-|-|
|onCapture|(file: File) => Promise<void> \| void|Yes|-|-|
|onClose|() => void|No|-|-|
|onChooseFile|() => void|No|-|-|
|facingMode|'user' \| 'environment'|No|'user'|-|
|title|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [CameraCaptureProps](../types/CameraCaptureProps.md)

