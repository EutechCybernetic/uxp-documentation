# UploadView


Drop-zone upload view: the user picks files and sees them as removable cards.
Multi-select starts the upload from its own button beside the strip;
single-select starts it from the host's header button, which also ends the
dialog. Files go to the content store and, when enabled, are recorded in the
user's media library.


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
|onUploaded|(urls: string[]) => void|Yes|-|-|

## Related Types

- [IUploadViewProps](../types/IUploadViewProps.md)

