# ProfileImage

Display a profile picture. Supports images (URLs), icons (FontAwesome, Phosphor patterns), and initials.





## Installation

```tsx
import { ProfileImage } from 'uxp/components';
```

## Signature

```tsx
const ProfileImage: React.FunctionComponent<IProfileImageProps>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-profileimage--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ProfileImage live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|image|string \| IconProp|No|-|-|
|name|string|No|-|"Alex Morgan"|
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

