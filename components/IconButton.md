# IconButton

Icon button component with set of default icons and options to render any icon





## Installation

```tsx
import { IconButton } from 'uxp/components';
```

## Signature

```tsx
const IconButton: React.FunctionComponent<IIconButtonProps>
```

## Examples

```tsx
<IconButton
     type="search"
     onClick={()=> {alert("Clicked")}}
     className="custom-css-class"
 />
```

```tsx
<IconButton
     icon="fas search"
     ...
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|icon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|type|[IButtonType](../types/IButtonType.md)|No|-|-|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|
|onClick|(e?: React.MouseEvent<HTMLButtonElement>) => void \| Promise<void>|No|-|-|
|onError|(e: React.MouseEvent<HTMLButtonElement>) => void|No|-|-|
|className|string|No|-|-|
|borderless|boolean|No|-|-|
|buttonType|"button" \| "submit" \| "reset"|No|-|-|
|variant|'primary' \| 'secondary' \| 'danger'|No|-|-|
|size|[IButtonSize](../types/IButtonSize.md)|No|-|-|

## Related Types

- [IIconButtonProps](../types/IIconButtonProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [IButtonType](../types/IButtonType.md)
- [IButtonSize](../types/IButtonSize.md)

