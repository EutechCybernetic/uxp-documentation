# UserInfoCard


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

```tsx
Basic usage (no dropdown):
```
<UserInfoCard userKey={123} />
```

```tsx
Simple details with auto-generated labels (array):
```
<UserInfoCard
  userKey={123}
  details={['Phone', 'Email', 'UserType']}
/>
```

```tsx
Details with custom labels and icons (array with objects):
```
<UserInfoCard
  userKey={123}
  details={[
    { field: 'Phone', label: 'Phone Number', icon: 'fas phone' },
    { field: 'Email', label: 'Email Address', icon: 'fas envelope' },
    'UserType'  // Auto-generated label: "User Type"
  ]}
/>
```

```tsx
Full config with layout options (config object):
```
<UserInfoCard
  userKey={123}
  details={{
    fields: ['Phone', 'Email', 'OfficePhone', 'UserType'],
    columns: 2,
    layout: 'vertical'
  }}
/>
```

```tsx
Custom details rendering (function):
```
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

```tsx
Avatar variant with simple details:
```
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

