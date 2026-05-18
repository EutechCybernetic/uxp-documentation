# UserInfoCard

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-userinfocard--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="UserInfoCard live demo"
></iframe>



A component that fetches and displays user information using InfoCard.
Automatically constructs profile image URL from user data.



## Installation

```tsx
import { UserInfoCard } from 'uxp/components';
```

## Signature

```tsx
const UserInfoCard: React.FunctionComponent<UserInfoCardProps>
```

## Examples

#### Basic usage (no dropdown)

```tsx
<UserInfoCard userKey={123} />
```

#### Simple details with auto-generated labels (array)

```tsx
<UserInfoCard
  userKey={123}
  details={['Phone', 'Email', 'UserType']}
/>
```

#### Details with custom labels and icons (array with objects)

```tsx
<UserInfoCard
  userKey={123}
  details={[
    { field: 'Phone', label: 'Phone Number', icon: 'fas phone' },
    { field: 'Email', label: 'Email Address', icon: 'fas envelope' },
    'UserType'  // Auto-generated label: "User Type"
  ]}
/>
```

#### Full config with layout options (config object)

```tsx
<UserInfoCard
  userKey={123}
  details={{
    fields: ['Phone', 'Email', 'OfficePhone', 'UserType'],
    columns: 2,
    layout: 'vertical'
  }}
/>
```

#### Custom details rendering (function)

```tsx
<UserInfoCard
  userKey={123}
  details={(user) => (
    <div>
      <h3>{user.FullName}</h3>
      <p>{user.Email}</p>
    </div>
  )}
/>
```

#### Avatar variant with simple details

```tsx
<UserInfoCard
  userKey={123}
  variant="avatar"
  size="large"
  shape="circle"
  details={['Email', 'Phone']}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|userKey|number \| string|Yes|-|-|
|details|[UserInfoCardDetails](../types/UserInfoCardDetails.md)|No|-|-|
|variant|'card' \| 'avatar'|No|-|-|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|
|dropdownPosition|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|

## Related Types

- [UserInfoCardProps](../types/UserInfoCardProps.md)
- [UserInfoCardDetails](../types/UserInfoCardDetails.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [UserDetailField](../types/UserDetailField.md)
- [UserDetails](../types/UserDetails.md)
- [UserDetailsConfig](../types/UserDetailsConfig.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

