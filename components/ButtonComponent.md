# ButtonComponent


Enhanced Button component with multiple variants and icon support



## Installation

```tsx
import { ButtonComponent } from 'uxp/components';
```

## Signature

```tsx
const ButtonComponent: React.FunctionComponent<ButtonComponentProps>
```

## Examples

```tsx
Basic button
```
<ButtonComponent title="Click me" onClick={() => console.log('clicked')} />
```

```tsx
Button with icons
```
<ButtonComponent
  title="Save"
  leftIcon="💾"
  rightIcon="→"
  onClick={handleSave}
/>
```

```tsx
Icon only button
```
<ButtonComponent
  leftIcon="×"
  iconOnly
  variant="danger"
  onClick={handleDelete}
/>
```

```tsx
Async button with loading
```
<ButtonComponent
  title="Submit"
  loadingTitle="Submitting..."
  onClick={async () => await submitForm()}
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
|onError|(e: React.MouseEvent<HTMLButtonElement>) => void|No|-|-|
|loading|boolean|No|-|-|
|loadingTitle|string|No|-|-|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|
|styles|React.CSSProperties|No|-|-|
|leftIconStyles|React.CSSProperties|No|-|-|
|rightIconStyles|React.CSSProperties|No|-|-|
|type|[ButtonComponentType](../types/ButtonComponentType.md)|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|iconOnly|boolean|No|-|-|

## Related Types

- [ButtonComponentProps](../types/ButtonComponentProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)

