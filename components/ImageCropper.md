# ImageCropper


Crops a picture to fit size and DPI rules, then hands back the new file. The frame stays fixed
on screen; the picture moves (drag, arrow keys) and zooms (wheel, pinch, the slider) under it,
and rotates in quarter turns. Nothing is typed in: the result takes the largest size the rules
allow (never enlarged) and the rules' highest DPI. One short line over the picture gives the
result size, or says to zoom out when the frame holds too few pixels. A picture smaller than the
rules' minimum can't be used: it says so and offers "Choose another photo".

The frame has the rules' proportions (square for square rules or none; the picture's own shape when
only `maxBytes` is set).
The result is a JPEG (PNG for a PNG source) with the DPI written into the file.

Opens as a dialog (full screen on phones), or renders `inline` inside another component.



## Installation

```tsx
import { ImageCropper } from 'uxp/components';
```

## Signature

```tsx
const ImageCropper: React.FunctionComponent<ImageCropperProps>
```

## Examples

```tsx
tsx
<ImageCropper show={!!file} file={file} rules={{ minWidth: 500, maxWidth: 1000, minHeight: 500, maxHeight: 1000, maxDpi: 200 }}
    onApply={async (cropped) => { await upload(cropped); setFile(null); }} onCancel={() => setFile(null)} />
```

## Live preview

[Open ImageCropper in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-pickers-media-imagecropper--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|file|File \| Blob|No|-|-|
|src|string|No|-|-|
|show|boolean|No|-|true|
|inline|boolean|No|-|-|
|rules|[IImageCropRules](../types/IImageCropRules.md)|No|-|{ minWidth: 500, maxWidth: 1000, minHeight: 500, maxHeight: 1000, minDpi: 100, …|
|initialDpi|number|No|-|-|
|title|string|No|-|-|
|roundMask|boolean|No|false|-|
|onApply|(file: File) => Promise<void> \| void|Yes|-|Log onApply={(file) => console.log('cropped', file)}|
|onCancel|() => void|Yes|-|-|
|onChooseAnother|() => void|No|-|-|
|className|string|No|-|-|

## Related Types

- [ImageCropperProps](../types/ImageCropperProps.md)
- [IImageCropRules](../types/IImageCropRules.md)

