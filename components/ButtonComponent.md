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

## Live preview
{% embed url="https://story.uxp.iviva.com/iframe.html?id=buttons-buttoncomponent--default&viewMode=story" %}

### Variants

#### Basic button

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-buttoncomponent--default&amp;viewMode=story&amp;args=title%3AClick+me%3BleftIcon%3A%21undefined%3BloadingTitle%3A%21undefined"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonComponent: Basic button"
></iframe>

#### Button with icons

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-buttoncomponent--default&amp;viewMode=story&amp;args=title%3ASave%3BloadingTitle%3A%21undefined&amp;props=%7B%22leftIcon%22%3A%22%F0%9F%92%BE%22%2C%22rightIcon%22%3A%22%E2%86%92%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonComponent: Button with icons"
></iframe>

#### Icon only button

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-buttoncomponent--default&amp;viewMode=story&amp;args=iconOnly%3A%21true%3Bvariant%3Adanger%3Btitle%3A%21undefined%3BloadingTitle%3A%21undefined&amp;props=%7B%22leftIcon%22%3A%22%C3%97%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonComponent: Icon only button"
></iframe>

#### Async button with loading

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-buttoncomponent--default&amp;viewMode=story&amp;args=title%3ASubmit%3BleftIcon%3A%21undefined&amp;props=%7B%22loadingTitle%22%3A%22Submitting...%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonComponent: Async button with loading"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|"Save"|
|tooltip|string|No|-|-|
|leftIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|"fas save"|
|rightIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|className|string|No|-|-|
|onClick|(e?: React.MouseEvent<HTMLButtonElement>) => void \| Promise<void>|No|-|Sync handler onClick={() => alert('Clicked')}|
|onError|(e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void|No|-|-|
|loading|boolean|No|false|-|
|loadingTitle|string|No|-|"Saving..."|
|active|boolean|No|false|-|
|disabled|boolean|No|false|-|
|styles|React.CSSProperties|No|-|-|
|leftIconStyles|React.CSSProperties|No|-|-|
|rightIconStyles|React.CSSProperties|No|-|-|
|type|[ButtonComponentType](../types/ButtonComponentType.md)|No|'button'|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|'primary'|-|
|iconOnly|boolean|No|false|-|
|size|[ButtonComponentSize](../types/ButtonComponentSize.md)|No|'medium'|-|
|mode|[ButtonComponentMode](../types/ButtonComponentMode.md)|No|'transparent'|-|
|textMode|[ButtonComponentTextMode](../types/ButtonComponentTextMode.md)|No|'sentence'|-|

## Related Types

- [ButtonComponentProps](../types/ButtonComponentProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)
- [ButtonComponentMode](../types/ButtonComponentMode.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

