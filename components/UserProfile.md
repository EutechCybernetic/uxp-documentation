# UserProfile

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=layout-userprofile--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="UserProfile live demo"
></iframe>



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

#### Basic usage

```tsx
tsx
<UserProfile>
  <your content>
</UserProfile>
```

#### Hide default details and logout button

```tsx
tsx
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

