# FileInput

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-fileinput--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="FileInput live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|File \| string|No|-|-|
|onChange|(file: File, isValid: boolean) => void|Yes|-|-|
|allowedTypes|string[]|No|-|-|
|preview|{ showName?: boolean // default false showPreview?: boolean // default true }|No|-|-|
|className|string|No|-|-|
|dropAreaIcon|IconProp|No|-|-|
|dropAreaLabel|string|No|-|-|
|compact|boolean|No|-|-|
|hidden|boolean|No|-|-|
|allowUrl|boolean|No|-|-|
|urlPlaceholder|string|No|-|-|
|onUrlChange|(url: string) => void|No|-|-|
|previewObjectFit|React.CSSProperties['objectFit']|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|open|() => void|Opens the file picker programmatically (headless/hidden mode trigger) |

## Related Types

- [IFileInputProps](../types/IFileInputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IFileInputInstanceProps](../types/IFileInputInstanceProps.md)

