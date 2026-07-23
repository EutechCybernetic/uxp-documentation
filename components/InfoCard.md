# InfoCard

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-infocard--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="InfoCard live demo"
></iframe>



Renders a data item as a horizontal identity card with avatar, title, subtitle, extra fields, badges, and actions.
Supports both data-fetching (via executeConfig) and pre-fetched data.
Use `layout="collapsed"` for the compact details-panel sidebar variant (image on right).



## Installation

```tsx
import { InfoCard } from 'uxp/components';
```

## Signature

```tsx
const InfoCard: React.FunctionComponent<InfoCardProps>
```

## Examples

#### Users row

```tsx
tsx
<InfoCard
  data={user}
  fields={{ image: 'avatar', name: 'fullName', title: 'fullName', subtitle: 'email' }}
  badges={<Chip label="Active" variant="success" />}
/>
```

#### Locations row with extra fields

```tsx
tsx
<InfoCard
  data={location}
  fields={{ image: 'thumbnail', title: 'name', subtitle: 'type' }}
  extraFields={[{ value: location.address, style: 'muted' }]}
  badges={<Chip label={location.status} variant="success" />}
/>
```

#### Collapsed sidebar variant

```tsx
tsx
<InfoCard
  data={location}
  fields={{ image: 'thumbnail', name: 'name', title: 'name', subtitle: 'type' }}
  badges={<Chip label="Active" variant="success" />}
  layout="collapsed"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|data|[InfoCardData](../types/InfoCardData.md)|Yes|-|-|
|fields|[InfoCardFields](../types/InfoCardFields.md)|No|-|-|
|extraFields|[InfoCardExtraField[]](../types/InfoCardExtraField.md)|No|-|-|
|details|[InfoCardDetailsContent](../types/InfoCardDetailsContent.md)|No|-|-|
|variant|'card' \| 'avatar'|No|-|-|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|
|dropdownPosition|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|layout|'default' \| 'collapsed'|No|-|-|
|titleStyle|[InfoCardFieldStyle](../types/InfoCardFieldStyle.md)|No|-|-|
|onTitleClick|() => void|No|-|-|
|subtitleStyle|[InfoCardFieldStyle](../types/InfoCardFieldStyle.md)|No|-|-|
|badges|React.ReactNode|No|-|-|
|actions|React.ReactNode|No|-|-|
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
- [InfoCardExtraField](../types/InfoCardExtraField.md)
- [InfoCardFieldStyle](../types/InfoCardFieldStyle.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

