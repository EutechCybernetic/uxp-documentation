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

## Live preview

[Open AnalyticsCard in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-analyticscard--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-analyticscard--docs&args=icon%3Afas+building%3Bvalue%3A42%3Blabel%3ATotal+Buildings%3Bnote%3A%21undefined>)
- [Example 2](<https://story.uxp.iviva.com/?path=/docs/data-display-cards-analyticscard--docs&args=icon%3Afas+users%3Blabel%3AActive+Users%3Bsmall%3A%21true%3Bloading%3A%21false%3Bnote%3A%21undefined&props=%7B%22value%22%3A%221%2C234%22%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|icon|string|Yes|-|"fas bolt"|
|value|string \| number|Yes|-|"1,284"|
|label|string|Yes|-|"Energy today (kWh)"|
|loading|boolean|No|-|-|
|small|boolean|No|-|-|
|badge|React.ReactNode|No|-|-|
|className|string|No|-|-|
|note|string|No|-|"+4% vs yesterday"|

## Related Types

- [AnalyticsCardProps](../types/AnalyticsCardProps.md)

