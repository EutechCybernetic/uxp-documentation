# ButtonComponent

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=buttons-buttoncomponent--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonComponent live demo"
></iframe>



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

#### Basic button

```tsx
<ButtonComponent title="Click me" onClick={() => console.log('clicked')} />
```

#### Button with icons

```tsx
<ButtonComponent
  title="Save"
  leftIcon="💾"
  rightIcon="→"
  onClick={handleSave}
/>
```

#### Icon only button

```tsx
<ButtonComponent
  leftIcon="×"
  iconOnly
  variant="danger"
  onClick={handleDelete}
/>
```

#### Async button with loading

```tsx
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
|size|[ButtonComponentSize](../types/ButtonComponentSize.md)|No|-|-|

## Related Types

- [ButtonComponentProps](../types/ButtonComponentProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)

