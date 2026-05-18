# IconButton

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=buttons-iconbutton--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="IconButton live demo"
></iframe>


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
|buttonType|[ButtonComponentType](../types/ButtonComponentType.md)|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|size|[ButtonComponentSize](../types/ButtonComponentSize.md)|No|-|-|
|loading|boolean|No|-|-|

## Related Types

- [IIconButtonProps](../types/IIconButtonProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [IButtonType](../types/IButtonType.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)

