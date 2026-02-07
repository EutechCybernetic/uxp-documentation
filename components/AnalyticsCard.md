# AnalyticsCard


A compact analytics card component for displaying metrics with an icon, value, and label.



## Installation

```tsx
import { AnalyticsCard } from 'uxp/components';
```

## Signature

```tsx
const AnalyticsCard: React.MemoExoticComponent<React.FunctionComponent<AnalyticsCardProps>>
```

## Examples

```tsx
tsx
<AnalyticsCard
  icon="fas building"
  value={42}
  label="Total Buildings"
/>
```

```tsx
tsx
<AnalyticsCard
  icon="fas users"
  value="1,234"
  label="Active Users"
  small={true}
  loading={false}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|icon|string|Yes|-|-|
|value|string \| number|Yes|-|-|
|label|string|Yes|-|-|
|loading|boolean|No|-|-|
|small|boolean|No|-|-|

## Related Types

- [AnalyticsCardProps](../types/AnalyticsCardProps.md)

