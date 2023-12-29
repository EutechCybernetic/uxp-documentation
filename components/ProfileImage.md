# ProfileImage



Display a profile picture. Alternatively you can specify a name and it will be shown in a colored background as initials




## Installation



```tsx
import {ProfileImage} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|image|string|The url for the image to be shown |
|name|string|Any name to be dispayed. This is used only if the image is empty. 2 letters will be derived from the name (typically the first letter of the first 2 words in the name) and a background color will be chosen. Background colors are random but consistent. So a given `name` string will always have the same background |
|bgColor|string||
|textColor|string||
|className|string||
|size|[ISize](types/ISize)||
### image



---



The url for the image to be shown


|type|
|-|
|string|
### name



---



Any name to be dispayed. This is used only if the image is empty.
2 letters will be derived from the name (typically the first letter of the first 2 words in the name)
and a background color will be chosen. Background colors are random but consistent. So a given `name` string will always have the same background


|type|
|-|
|string|
### bgColor



---





|type|
|-|
|string|
### textColor



---





|type|
|-|
|string|
### className



---





|type|
|-|
|string|
### size



---





|type|
|-|
|[ISize](types/ISize)|
