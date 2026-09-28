# ObjectInfoCard

> **Part of [ObjectDetailsPanel](ObjectDetailsPanel.md).** Usually used through ObjectDetailsPanel. Use it directly to build a custom layout.


A component that displays a grid of labeled fields with optional icons and custom value rendering.



## Installation

```tsx
import { ObjectInfoCard } from 'uxp/components';
```

## Signature

```tsx
const ObjectInfoCard: React.MemoExoticComponent<React.FunctionComponent<ObjectInfoCardProps>>
```

## Examples

```tsx
<ObjectInfoCard
  fields={[
    { label: 'Name', value: 'John Doe' },
    { label: 'Email', value: 'john@example.com' }
  ]}
/>
```

```tsx
<ObjectInfoCard
  fields={[
    { label: 'Name', value: 'John Doe', icon: 'user' },
    { label: 'Email', value: 'john@example.com', icon: 'envelope', renderValue: (value) => <a href={`mailto:${value}`}>{value}</a> },
    { label: 'Status', value: 'Active' }
  ]}
  columns={3}
  className="custom-info-card"
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-object-search-details-panel-objectinfocard--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ObjectInfoCard live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-object-search-details-panel-objectinfocard--default&amp;viewMode=story&amp;args=columns%3A%21undefined%3Btitle%3A%21undefined&amp;props=%7B%22fields%22%3A%5B%7B%22label%22%3A%22Name%22%2C%22value%22%3A%22John+Doe%22%7D%2C%7B%22label%22%3A%22Email%22%2C%22value%22%3A%22john%40example.com%22%7D%5D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ObjectInfoCard: Example 1"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|fields|[ObjectField[]](../types/ObjectField.md)|Yes|-|[ { label: 'Status', value: 'Running', icon: 'fas circle-check' }, { label: 'Lo…|
|columns|1 \| 2 \| 3 \| 4|No|-|2|
|layout|'horizontal' \| 'vertical'|No|-|-|
|valueAlign|'start' \| 'end'|No|-|-|
|className|string|No|-|-|
|loading|boolean|No|-|-|
|title|string|No|-|"Details"|

## Related Types

- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)

