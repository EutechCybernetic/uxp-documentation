# UploadStatus


Progress and failure feedback for an upload. Rendered by the field and by the
dialog's Upload source, which report the same thing in the same place.


## Installation

```tsx
import { UploadStatus } from 'uxp/components';
```

## Signature

```tsx
const UploadStatus: React.FunctionComponent<IUploadStatusProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isUploading|boolean|Yes|-|-|
|progress|number|No|-|-|
|uploadingIndex|number|No|-|-|
|uploadingTotal|number|No|-|-|
|error|string \| null|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IUploadStatusProps](../types/IUploadStatusProps.md)

