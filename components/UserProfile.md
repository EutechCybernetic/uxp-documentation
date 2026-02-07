# UserProfile


User Profile component

This component can be used when building UI without the default header



## Installation

```tsx
import { UserProfile } from 'uxp/components';
```

## Signature

```tsx
const UserProfile: React.FunctionComponent<ProfileProps>
```

## Examples

```tsx
Basic usage
```tsx
<UserProfile>
  <your content>
</UserProfile>
```

```tsx
Hide default details and logout button
```tsx
<UserProfile
  hideDetails={true}
  hideLogout={true}
>
  <your content>
</UserProfile>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|hideDetails|boolean|No|-|-|
|hideLogout|boolean|No|-|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [ProfileProps](../types/ProfileProps.md)

