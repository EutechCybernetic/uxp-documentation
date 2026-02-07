# FileInput


This component gives you a file input component.




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
|value|File \| string|Yes|-|-|
|onChange|(file: File, isValid: boolean) => void|Yes|-|-|
|allowedTypes|string[]|No|-|-|
|preview|{ showName?: boolean // default false, showPreview?: boolean // default true }|No|-|-|
|className|string|No|-|-|
|dropAreaIcon|IconProp|No|-|-|
|dropAreaLabel|string|No|-|-|

## Related Types

- [IFileInputProps](../types/IFileInputProps.md)
- [IFileInputInstanceProps](../types/IFileInputInstanceProps.md)

