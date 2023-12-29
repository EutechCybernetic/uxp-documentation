# LinkButtonWidget



This widget will give a simple widget with configurable option to create a link button



## Installation



```tsx
import {LinkButtonWidget} from 'uxp/components';
```

## Examples



```tsx
<LinkButtonWidget
     link="https://google.com"
     target="_blank"
     icon="path to your icon"
     label="Go to Google"
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|link|string|link url |
|target|"_self" \| "_blank" \| "_parent"|target for link default is _self |
|icon|string|icon to show |
|label|string|label for link |
### link



---



link url


|type|
|-|
|string|
### target



---



target for link
default is _self


|type|
|-|
|"_self" \| "_blank" \| "_parent"|
### icon



---



icon to show


|type|
|-|
|string|
### label



---



label for link


|type|
|-|
|string|
