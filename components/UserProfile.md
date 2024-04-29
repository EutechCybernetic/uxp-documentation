# UserProfile





User Profile component

This component can be used when building UI without the default header



## Installation



```tsx
import {UserProfile} from 'uxp/components';
```

## Examples



```tsx
basic usage

 <UserProfile>
     <your content >
 </UserProfile>
```



```tsx
hide default details and logout button

 <UserProfile
     hideDetails={true}
     hideLogout={true}
 >
     <your content >
 </UserProfile>
```

## Properties

|Name|Type|Description|
|-|-|-|
|hideDetails|boolean||
|hideLogout|boolean||
|className|string||
### hideDetails



---





|type|
|-|
|boolean|
### hideLogout



---





|type|
|-|
|boolean|
### className



---





|type|
|-|
|string|
