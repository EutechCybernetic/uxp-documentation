# ObjectInfoCard


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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|fields|[ObjectField[]](../types/ObjectField.md)|Yes|-|-|
|columns|1 \| 2 \| 3 \| 4|No|-|-|
|layout|'horizontal' \| 'vertical'|No|-|-|
|valueAlign|'start' \| 'end'|No|-|-|
|className|string|No|-|-|
|loading|boolean|No|-|-|
|title|string|No|-|-|

## Related Types

- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)

