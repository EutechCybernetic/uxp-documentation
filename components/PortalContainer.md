# PortalContainer






This component is used to create a react portal.




## Installation



```tsx
import {PortalContainer} from 'uxp/components';
```

## Examples



```tsx
<PortalContainer >
     {your content}
 </PortalContainer>
```



```tsx
<PortalContainer
     hasBackdrop
     onClickBackdrop={() => {setShow(false)}}
     backdropStyles={{backgroundColor: "white"}}
 >
     {your content}
 </PortalContainer>
```

## Properties

|Name|Type|Description|
|-|-|-|
|hasBackdrop|boolean|create a backdrop if true |
|onClickBackdrop|() => void|callback function to click on backdrop |
|backdropStyles|any|additional styles to backdrop |
|disableScroll|boolean|disabled the scrolling of main content block if true default value is true |
|className|string||
### hasBackdrop



---



create a backdrop if true


|type|
|-|
|boolean|
### onClickBackdrop



---



callback function to click on backdrop


|type|
|-|
|() => void|
### backdropStyles



---



additional styles to backdrop


|type|
|-|
|any|
### disableScroll



---



disabled the scrolling of main content block if true
default value is true


|type|
|-|
|boolean|
### className



---





|type|
|-|
|string|
