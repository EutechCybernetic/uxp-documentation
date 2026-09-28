# RadialGauge




This component is used to create a radial gauge.

## Demo
Find a [Demo](https://lucy-uxp.github.io/dev/showcase.html#radial-gauge) here




## Installation

```tsx
import { RadialGauge } from 'uxp/components';
```

## Signature

```tsx
const RadialGauge: React.FunctionComponent<IGaugeProps>
```

## Examples

```tsx
<RadialGauge
     value={10}
     min={0}
     max={100}
 />
```

```tsx
<RadialGauge
     value={10}
     min={0}
     max={100}
     label={() => <>Equipment Heat</>}
     legend={true}
     gradient={true}
     thickness={20}
     largeTick={5}
     smallTick={2}
     colors={[
         {color: 'cyan', stopAt: 12.5},
         {color: 'green', stopAt: 70},
         {color: 'orange', stopAt: 87.5},
         {color: 'red', stopAt: 100},
     ]}

 />
```

## Live preview

[Open RadialGauge in the playground →](<https://story.uxp.iviva.com/?path=/docs/charts-radialgauge--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/charts-radialgauge--docs&args=value%3A10%3Bmin%3A0%3Bmax%3A100%3Bcolors%3A%21undefined>)
- [Example 2](<https://story.uxp.iviva.com/?path=/docs/charts-radialgauge--docs&args=value%3A10%3Bmin%3A0%3Bmax%3A100%3Blegend%3A%21true%3Bgradient%3A%21true%3Bthickness%3A20%3BlargeTick%3A5%3BsmallTick%3A2&props=%7B%22colors%22%3A%5B%7B%22color%22%3A%22cyan%22%2C%22stopAt%22%3A12.5%7D%2C%7B%22color%22%3A%22green%22%2C%22stopAt%22%3A70%7D%2C%7B%22color%22%3A%22orange%22%2C%22stopAt%22%3A87.5%7D%2C%7B%22color%22%3A%22red%22%2C%22stopAt%22%3A100%7D%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|min|number|Yes|-|0|
|max|number|Yes|-|100|
|value|number|Yes|-|72|
|colors|Array<{ color: string, stopAt: number }>|No|-|[ { color: '#4caf50', stopAt: 60 }, { color: '#ff9800', stopAt: 85 }, { color: …|
|label|() => JSX.Element|No|-|Percentage label={() => <div>72%</div>}|
|legend|boolean|No|-|-|
|tickColor|string|No|-|-|
|className|string|No|-|-|
|styles|React.CSSProperties|No|-|-|
|gradient|boolean|No|-|-|
|thickness|number|No|-|-|
|largeTick|number|No|4|-|
|smallTick|number|No|1|-|
|backgroundColor|string|No|-|-|
|labelColor|string|No|-|-|
|needleColor|string|No|-|-|

## Related Types

- [IGaugeProps](../types/IGaugeProps.md)

