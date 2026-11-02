# UploadView

> **Advanced.** Available for building custom components. Most apps do not need it.


The picker's upload view. Single select: the drop-zone shows the chosen file (a new drop replaces it)
with its check and Crop above it, and the host's header button uploads it and ends the dialog.
Multiple select: the focused file shows in the drop-zone (a new drop adds files) over a strip of every
file, first a fixed "New upload" tile; each file uploads as soon as it passes its check and joins the
selection, and files can only be added and deleted. Files go to the content store and, when enabled,
are recorded in the user's media library.



## Installation

```tsx
import { UploadView } from 'uxp/components';
```

## Signature

```tsx
const UploadView: React.FunctionComponent<IUploadViewProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|allowedTypes|string[]|No|-|-|
|uploadPath|string|No|'media-library/'|-|
|saveToLibrary|boolean|No|-|-|
|multiple|boolean|No|false|-|
|onPendingFilesChange|(files: File[]) => void|No|-|-|
|uploadRequestedAt|number|No|-|-|
|onUploaded|(urls: string[]) => void|Yes|-|Log onUploaded={(urls) => console.log('uploaded', urls)}|
|uploader|(file: File) => Promise<string>|No|-|-|
|validate|(info: IMediaCheckInfo) => string \| undefined|No|-|-|
|checkKey|number|No|-|-|
|onBlockedChange|(blocked: boolean) => void|No|-|-|
|cropRules|[IImageCropRules](../types/IImageCropRules.md)|No|-|-|
|onRemoved|(url: string) => void|No|-|-|
|initialFiles|File[]|No|-|-|
|localOnly|boolean|No|-|-|
|onReadyChange|(files: File[]) => void|No|-|-|
|onFixChange|(fix: (() => void) \| null) => void|No|-|-|
|fixInToolbar|boolean|No|-|-|

## Related Types

- [IUploadViewProps](../types/IUploadViewProps.md)
- [IMediaCheckInfo](../types/IMediaCheckInfo.md)
- [IImageCropRules](../types/IImageCropRules.md)

