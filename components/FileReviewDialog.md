# FileReviewDialog


Checks files before a field takes them: the media picker's multiple upload layout (preview, strip,
"New upload", delete, crop), with nothing uploaded. "Use N files" hands back the files that passed.
FileInput opens it when its `review` prop is set.



## Installation

```tsx
import { FileReviewDialog } from 'uxp/components';
```

## Signature

```tsx
const FileReviewDialog: React.FunctionComponent<IFileReviewDialogProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|files|File[]|Yes|-|-|
|title|string|No|-|-|
|allowedTypes|string[]|No|-|-|
|validate|(info: IMediaCheckInfo) => string \| undefined|No|-|-|
|cropRules|[IImageCropRules](../types/IImageCropRules.md)|No|-|-|
|onUse|(files: File[]) => void|Yes|-|-|
|onClose|() => void|Yes|-|-|

## Related Types

- [IFileReviewDialogProps](../types/IFileReviewDialogProps.md)
- [IMediaCheckInfo](../types/IMediaCheckInfo.md)
- [IImageCropRules](../types/IImageCropRules.md)

