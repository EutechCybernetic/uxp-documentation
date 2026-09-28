# ObjectDetailsPanelHeader

> **Part of [ObjectDetailsPanel](ObjectDetailsPanel.md).** Usually used through ObjectDetailsPanel. Use it directly to build a custom layout.


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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-object-search-details-panel-objectdetailspanelheader--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ObjectDetailsPanelHeader live preview"
></iframe>

### Variants

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-object-search-details-panel-objectdetailspanelheader--default&amp;viewMode=story&amp;args=title%3ASimple+Header%3Bsubtitle%3ANo+breadcrumb+or+analytics%3Bitem%3A%21undefined%3Bbreadcrumb%3A%21undefined%3Banalytics%3A%21undefined"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ObjectDetailsPanelHeader: Example 2"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|item|[RowData](../types/RowData.md)|No|-|{ id: 1, name: 'Chiller 01', status: 'Running', location: 'Level 1' }|
|breadcrumb|BreadcrumbItem[] \| ((item: RowData, loading?: boolean) => BreadcrumbItem[])|No|-|[{ label: 'Assets' }, { label: 'Level 1' }, { label: 'Chiller 01' }]|
|title|string \| React.ReactNode \| ((item: RowData, loading?: boolean) => React.ReactNode)|Yes|-|"Chiller 01"|
|status|React.ReactNode \| ((item: RowData, loading?: boolean) => React.ReactNode)|No|-|-|
|subtitle|React.ReactNode \| ((item: RowData, loading?: boolean) => React.ReactNode)|No|-|-|
|analytics|AnalyticsCardProps[] \| ((item: RowData, loading?: boolean) => AnalyticsCardProps[])|No|-|[ { icon: 'fas bolt', value: '72%', label: 'Load' }, { icon: 'fas temperature-h…|
|backgroundImage|string \| ((item: RowData, loading?: boolean) => string)|No|-|-|
|loading|boolean|No|-|-|
|className|string|No|-|-|

## Related Types

- [ObjectDetailsPanelHeaderProps](../types/ObjectDetailsPanelHeaderProps.md)
- [RowData](../types/RowData.md)
- [BreadcrumbItem](../types/BreadcrumbItem.md)
- [AnalyticsCardProps](../types/AnalyticsCardProps.md)

