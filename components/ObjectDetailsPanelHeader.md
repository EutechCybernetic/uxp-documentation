# ObjectDetailsPanelHeader


A header component for ObjectDetailsPanel with breadcrumb, title, subtitle, and analytics cards.



## Installation

```tsx
import { ObjectDetailsPanelHeader } from 'uxp/components';
```

## Signature

```tsx
const ObjectDetailsPanelHeader: React.MemoExoticComponent<React.FunctionComponent<ObjectDetailsPanelHeaderProps>>
```

## Examples

```tsx
tsx
<ObjectDetailsPanelHeader
  breadcrumb={[
    { label: 'Home', link: '/' },
    { label: 'Locations', link: '/locations' },
    { label: 'Singapore' }
  ]}
  title="Singapore Office"
  subtitle={<Chip icon="fas circle" label="Active" />}
  analytics={[
    { icon: 'fas building', value: 5, label: 'Buildings' },
    { icon: 'fas layer-group', value: 12, label: 'Floors' }
  ]}
  backgroundImage="/images/office.jpg"
/>
```

```tsx
tsx
<ObjectDetailsPanelHeader
  title="Simple Header"
  subtitle="No breadcrumb or analytics"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|item|[RowData](../types/RowData.md)|No|-|-|
|breadcrumb|BreadcrumbItem[] \| ((item: RowData, loading?: boolean) => BreadcrumbItem[])|No|-|-|
|title|string \| React.ReactNode \| ((item: RowData, loading?: boolean) => React.ReactNode)|Yes|-|-|
|status|React.ReactNode \| ((item: RowData, loading?: boolean) => React.ReactNode)|No|-|-|
|subtitle|React.ReactNode \| ((item: RowData, loading?: boolean) => React.ReactNode)|No|-|-|
|analytics|AnalyticsCardProps[] \| ((item: RowData, loading?: boolean) => AnalyticsCardProps[])|No|-|-|
|backgroundImage|string \| ((item: RowData, loading?: boolean) => string)|No|-|-|
|loading|boolean|No|-|-|
|className|string|No|-|-|

## Related Types

- [ObjectDetailsPanelHeaderProps](../types/ObjectDetailsPanelHeaderProps.md)
- [RowData](../types/RowData.md)
- [BreadcrumbItem](../types/BreadcrumbItem.md)
- [AnalyticsCardProps](../types/AnalyticsCardProps.md)

