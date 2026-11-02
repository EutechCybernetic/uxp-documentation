# FileInput


FileInput component - Drag and drop file upload with preview
Follows v5 input pattern with theme support and accessibility



## Installation

```tsx
import { FileInput } from 'uxp/components';
```

## Signature

```tsx
const FileInput: React.ForwardRefExoticComponent<React.RefAttributes<IFileInputInstanceProps> & IFileInputProps>
```

## Live preview

[Open FileInput in the playground →](<https://story.uxp.iviva.com/?path=/docs/inputs-pickers-fileinput--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|File \| string|No|-|-|
|onChange|(file: File, isValid: boolean) => void|Yes|-|-|
|multiple|boolean|No|false|-|
|onFilesChange|(files: File[], allValid: boolean) => void|No|-|-|
|allowedTypes|string[]|No|-|-|
|maxSizeMB|number|No|-|-|
|preview|{ showName?: boolean // default false showPreview?: boolean // default true }|No|-|-|
|className|string|No|-|-|
|dropAreaIcon|IconProp|No|-|-|
|dropAreaLabel|string|No|-|-|
|dropzone|boolean|No|-|-|
|dropAreaHint|string|No|-|"Configuration package · up to 3.5 MB"|
|compact|boolean|No|-|-|
|hidden|boolean|No|-|-|
|allowUrl|boolean|No|-|-|
|urlPlaceholder|string|No|-|-|
|onUrlChange|(url: string) => void|No|-|-|
|suffix|React.ReactNode|No|-|-|
|hidePrefixIcon|boolean|No|-|-|
|onFieldClick|() => void|No|-|-|
|previewObjectFit|React.CSSProperties['objectFit']|No|-|-|
|removable|boolean|No|-|-|
|previewInfo|React.ReactNode|No|-|-|
|review|{ /** The dialog's title */ title?: string /** The check per file: a message (line 1 the problem, line 2 a hint), or nothing when fine */ validate?: (info: IMediaCheckInfo) => string \| undefined /** Size and DPI rules for "Crop and resize" */ cropRules?: IImageCropRules }|No|-|{ title: 'Site photos', validate: (info) => info.width > 2000 ? 'Too wide\nUse …|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|open|() => void|Opens the file picker programmatically (headless/hidden mode trigger) |

## Related Types

- [IFileInputProps](../types/IFileInputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IMediaCheckInfo](../types/IMediaCheckInfo.md)
- [Size](../types/Size.md)
- [IImageCropRules](../types/IImageCropRules.md)
- [IFileInputInstanceProps](../types/IFileInputInstanceProps.md)

