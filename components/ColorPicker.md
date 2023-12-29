# ColorPicker





Color picker input field


## Installation



```tsx
import {ColorPicker} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|color|string| default color |
|onChange|(color: string) => void|callback on select a color |
|position|[IColorPickerPosition](types/IColorPickerPosition)|picker position. default is left |
|className|string|class name for additional styles |
|closeOnSelect|boolean|close the picker on select a color default is true |
|displayFormat|[IColorTypes](types/IColorTypes)|change display format |
|returnFormat|[IColorTypes](types/IColorTypes)|change return format |
### color



---



 default color


|type|
|-|
|string|
### onChange



---



callback on select a color


|type|
|-|
|(color: string) => void|
### position



---



picker position.  default is left


|type|
|-|
|[IColorPickerPosition](types/IColorPickerPosition)|
### className



---



class name for additional styles


|type|
|-|
|string|
### closeOnSelect



---



close the picker on select a color
default is true


|type|
|-|
|boolean|
### displayFormat



---



change display format


|type|
|-|
|[IColorTypes](types/IColorTypes)|
### returnFormat



---



change return format


|type|
|-|
|[IColorTypes](types/IColorTypes)|
