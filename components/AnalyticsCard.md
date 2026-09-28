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

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-analyticscard--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="AnalyticsCard live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-analyticscard--default&amp;viewMode=story&amp;args=icon%3Afas+building%3Bvalue%3A42%3Blabel%3ATotal+Buildings%3Bnote%3A%21undefined"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="AnalyticsCard: Example 1"
></iframe>

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-analyticscard--default&amp;viewMode=story&amp;args=icon%3Afas+users%3Blabel%3AActive+Users%3Bsmall%3A%21true%3Bloading%3A%21false%3Bnote%3A%21undefined&amp;props=%7B%22value%22%3A%221%2C234%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="AnalyticsCard: Example 2"
></iframe>

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

