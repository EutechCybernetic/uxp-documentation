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

## Live preview

[Open UserInfoCard in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-userinfocard--docs>)

### Variants

- [Basic usage (no dropdown):](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-userinfocard--docs&args=userKey%3A123>)
- [Simple details with auto-generated labels (array):](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-userinfocard--docs&args=userKey%3A123&props=%7B%22details%22%3A%5B%22Phone%22%2C%22Email%22%2C%22UserType%22%5D%7D>)
- [Details with custom labels and icons (array with objects):](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-userinfocard--docs&args=userKey%3A123&props=%7B%22details%22%3A%5B%7B%22field%22%3A%22Phone%22%2C%22label%22%3A%22Phone+Number%22%2C%22icon%22%3A%22fas+phone%22%7D%2C%7B%22field%22%3A%22Email%22%2C%22label%22%3A%22Email+Address%22%2C%22icon%22%3A%22fas+envelope%22%7D%2C%22UserType%22%5D%7D>)
- [Full config with layout options (config object):](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-userinfocard--docs&args=userKey%3A123&props=%7B%22details%22%3A%7B%22fields%22%3A%5B%22Phone%22%2C%22Email%22%2C%22OfficePhone%22%2C%22UserType%22%5D%2C%22columns%22%3A2%2C%22layout%22%3A%22vertical%22%7D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|userKey|number \| string|Yes|-|"1001"|
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

