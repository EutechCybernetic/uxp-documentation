# RadialGauge

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=charts-radialgauge--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="RadialGauge live demo"
></iframe>





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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|min|number|Yes|-|-|
|max|number|Yes|-|-|
|value|number|Yes|-|-|
|colors|Array<{ color: string, stopAt: number }>|No|-|-|
|label|() => JSX.Element|No|-|-|
|legend|boolean|No|-|-|
|tickColor|string|No|-|-|
|className|string|No|-|-|
|styles|React.CSSProperties|No|-|-|
|gradient|boolean|No|-|-|
|thickness|number|No|-|-|
|largeTick|number|No|-|-|
|smallTick|number|No|-|-|
|backgroundColor|string|No|-|-|
|labelColor|string|No|-|-|
|needleColor|string|No|-|-|

## Related Types

- [IGaugeProps](../types/IGaugeProps.md)

