# Button


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

## Live preview

[Open Button in the playground →](<https://story.uxp.iviva.com/?path=/docs/buttons-button--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/buttons-button--docs&args=title%3AClick%3BloadingTitle%3A%21undefined%3Bicon%3A%21undefined>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|"Save"|
|leftIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|rightIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|className|string|No|-|-|
|onClick|(e?: React.MouseEvent<HTMLButtonElement>) => void \| Promise<void>|No|-|Sync handler onClick={() => alert('Clicked')}|
|onError|(e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void|No|-|-|
|loading|boolean|No|-|-|
|loadingTitle|string|No|-|"Saving..."|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|
|styles|React.CSSProperties|No|-|-|
|iconStyles|React.CSSProperties \| { leftIcon?: React.CSSProperties, rightIcon?: React.CSSProperties }|No|-|-|
|type|[ButtonComponentType](../types/ButtonComponentType.md)|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|iconOnly|boolean|No|-|-|
|size|[ButtonComponentSize](../types/ButtonComponentSize.md)|No|-|-|
|textMode|[ButtonComponentTextMode](../types/ButtonComponentTextMode.md)|No|-|-|
|icon|string|No|-|"fas save"|
|iconPosition|'left' \| 'right'|No|'left'|-|
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

