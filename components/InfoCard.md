# InfoCard

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-infocard--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="InfoCard live demo"
></iframe>



A component that displays data in an ItemCard or ProfileImage with optional dropdown details.
Supports both fetching data via useExecuteRequest or using already-fetched data.




## Installation

```tsx
import { InfoCard } from 'uxp/components';
```

## Signature

```tsx
const InfoCard: React.FunctionComponent<InfoCardProps>
```

## Examples

#### With executeConfig (InfoCard fetches data)

```tsx
<InfoCard
  data={{
    executeConfig: {
      type: 'action',
      model: 'User',
      action: 'GetDetails',
      parameters: { id: '123' }
    }
  }}
  fields={{
    image: 'avatar',
    title: 'name',
    subtitle: 'email'
  }}
  details={(item) => ({
    fields: [
      { label: 'Phone', value: item.phone },
      { label: 'Department', value: item.department }
    ]
  })}
/>
```

#### With direct data (already fetched)

```tsx
<InfoCard
  data={{
    avatar: 'https://example.com/avatar.jpg',
    name: 'John Doe',
    email: 'john@example.com',
    phone: '123-456-7890',
    department: 'Engineering'
  }}
  fields={{
    image: 'avatar',
    title: 'name',
    subtitle: 'email'
  }}
  details={(item) => (
    <div>
      <p>Phone: {item.phone}</p>
      <p>Department: {item.department}</p>
    </div>
  )}
  dropdownPosition="bottom-right"
/>
```

#### Avatar variant (just profile image)

```tsx
<InfoCard
  data={{ avatar: 'https://example.com/avatar.jpg', name: 'John Doe' }}
  fields={{ image: 'avatar', name: 'name' }}
  variant="avatar"
  size="large"
  shape="circle"
  details={(item) => (
    <div>User: {item.name}</div>
  )}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|[InfoCardData](../types/InfoCardData.md)|Yes|-|-|
|fields|[InfoCardFields](../types/InfoCardFields.md)|No|-|-|
|details|[InfoCardDetailsContent](../types/InfoCardDetailsContent.md)|No|-|-|
|variant|'card' \| 'avatar'|No|-|-|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|
|dropdownPosition|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|

## Related Types

- [InfoCardProps](../types/InfoCardProps.md)
- [InfoCardData](../types/InfoCardData.md)
- [ExecuteRequestConfig](../types/ExecuteRequestConfig.md)
- [ExecuteConfig](../types/ExecuteConfig.md)
- [ExecuteActionConfig](../types/ExecuteActionConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [ExecuteServiceConfig](../types/ExecuteServiceConfig.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteAPIConfig](../types/ExecuteAPIConfig.md)
- [ExecuteQueryConfig](../types/ExecuteQueryConfig.md)
- [QueryParams](../types/QueryParams.md)
- [ExecuteCollectionConfig](../types/ExecuteCollectionConfig.md)
- [UseExecuteOptions](../types/UseExecuteOptions.md)
- [InfoCardFields](../types/InfoCardFields.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

