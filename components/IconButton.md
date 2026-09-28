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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-iconbutton--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="IconButton live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-iconbutton--default&amp;viewMode=story&amp;args=type%3Asearch%3BclassName%3Acustom-css-class%3Btooltip%3A%21undefined"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="IconButton: Example 1"
></iframe>

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-iconbutton--default&amp;viewMode=story&amp;args=icon%3Afas+search%3Btype%3A%21undefined%3Btooltip%3A%21undefined"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="IconButton: Example 2"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|icon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|type|[IButtonType](../types/IButtonType.md)|No|-|"edit"|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|
|onClick|(e?: React.MouseEvent<HTMLButtonElement>) => void \| Promise<void>|No|-|Sync handler onClick={() => alert('Clicked')}|
|onError|(e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void|No|-|-|
|tooltip|string|No|-|"Edit"|
|className|string|No|-|-|
|borderless|boolean|No|-|-|
|buttonType|[ButtonComponentType](../types/ButtonComponentType.md)|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|size|[ButtonComponentSize](../types/ButtonComponentSize.md)|No|-|-|
|loading|boolean|No|-|-|
|mode|[ButtonComponentMode](../types/ButtonComponentMode.md)|No|-|-|

## Related Types

- [IIconButtonProps](../types/IIconButtonProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [IButtonType](../types/IButtonType.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)
- [ButtonComponentMode](../types/ButtonComponentMode.md)

