# ProfileImage

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=other-profileimage--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ProfileImage live demo"
></iframe>


Display a profile picture. Supports images (URLs), icons (FontAwesome, Phosphor patterns), and initials.




## Installation

```tsx
import { ProfileImage } from 'uxp/components';
```

## Signature

```tsx
const ProfileImage: React.FunctionComponent<IProfileImageProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|image|string \| IconProp|No|-|-|
|name|string|No|-|-|
|bgColor|string|No|-|-|
|textColor|string|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|
|skipAcronym|boolean|No|-|-|
|borderColor|string|No|-|-|
|borderWidth|string|No|-|-|

## Related Types

- [IProfileImageProps](../types/IProfileImageProps.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)

