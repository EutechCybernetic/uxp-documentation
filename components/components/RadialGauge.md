# RadialGauge






This component is used to create a radial gauge.

## Demo
Find a [Demo](https://lucy-uxp.github.io/dev/showcase.html#radial-gauge) here




## Installation



```tsx
import {RadialGauge} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|min|number|min value of the gauge |
|max|number|max value of the gauge |
|value|number|value of the gauge |
|colors|Array<{ color: string, stopAt: number }>|colors array. color: name of the color. stopAt: length of color distribution. default is blue, green, yellow, red colors at equal length |
|label|() => JSX.Element|label no default value |
|legend|boolean|if true show legend. default is false |
|tickColor|string|color of the ticks. default is white |
|className|string|class name(s) for additional styling |
|styles|React.CSSProperties|additional inline styles |
|gradient|boolean|if true show gradient colors default is false |
|thickness|number|thickness of the gauge This value is defend on the radius default is radius * 0.11 max value is radius * 0.25 if you pass a higher value than the max value, max value will be used |
|largeTick|number|thickness of the large ticks default is 4 min value is 1 max value is 6 if the given value is higher than the max value, max values will be used |
|smallTick|number|thickness of the small ticks default is 1 min values is 1 max values is 3 if the given values is higher than the max value, max values will be used |
### min



---



min value of the gauge


|type|
|-|
|number|
### max



---



max value of the gauge


|type|
|-|
|number|
### value



---



value of the gauge


|type|
|-|
|number|
### colors



---



colors array.
color: name of the color.
stopAt: length of color distribution.

default is blue, green, yellow, red colors at equal length


|type|
|-|
|Array<{ color: string, stopAt: number }>|
### label



---



label
no default value


|type|
|-|
|() => JSX.Element|
### legend



---



if true show legend.
default is false


|type|
|-|
|boolean|
### tickColor



---



color of the ticks.
default is white


|type|
|-|
|string|
### className



---



class name(s) for additional styling


|type|
|-|
|string|
### styles



---



additional inline styles


|type|
|-|
|React.CSSProperties|
### gradient



---



if true show gradient colors
default is false


|type|
|-|
|boolean|
### thickness



---



thickness of the gauge
This value is defend on the radius
default is radius * 0.11
max value is radius * 0.25

if you pass a higher value than the max value, max value will be used


|type|
|-|
|number|
### largeTick



---



thickness of the large ticks
default is 4
min value is 1
max value is 6

if the given value is higher than the max value, max values will be used


|type|
|-|
|number|
### smallTick



---



thickness of the small ticks
default is 1
min values is 1
max values is 3

if the given values is higher than the max value, max values will be used


|type|
|-|
|number|
