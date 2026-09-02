# Button

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=buttons-button--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Button live demo"
></iframe>



This is a basic button component.




## Installation

```tsx
import { Button } from 'uxp/components';
```

## Signature

```tsx
const Button: React.FunctionComponent<ButtonProps>
```

## Examples

```tsx
<Button
     title="Click"
     onClick={() => {alert("Clicked")}}
 />
```

```tsx
<Button
     title="Click"
     onClick={() => {alert("Clicked")}}
     leftIcon="https://static.iviva.com/images/lucy-logo.svg"
     loading={isLoading}
     loadingTitle="Loading..."
     className="custom-css-class"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|leftIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|rightIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|className|string|No|-|-|
|onClick|(e?: React.MouseEvent<HTMLButtonElement>) => void \| Promise<void>|No|-|-|
|onError|(e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void|No|-|-|
|loading|boolean|No|-|-|
|loadingTitle|string|No|-|-|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|
|styles|React.CSSProperties|No|-|-|
|iconStyles|React.CSSProperties \| { leftIcon?: React.CSSProperties, rightIcon?: React.CSSProperties }|No|-|-|
|type|[ButtonComponentType](../types/ButtonComponentType.md)|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|iconOnly|boolean|No|-|-|
|size|[ButtonComponentSize](../types/ButtonComponentSize.md)|No|-|-|
|textMode|[ButtonComponentTextMode](../types/ButtonComponentTextMode.md)|No|-|-|
|icon|string|No|-|-|
|iconPosition|'left' \| 'right'|No|-|-|
|useLoadingSpinner|boolean|No|-|-|

## Related Types

- [ButtonProps](../types/ButtonProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

