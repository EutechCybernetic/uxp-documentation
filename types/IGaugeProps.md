# IGaugeProps


Options that can be passed to a date picker field


## Definition

```tsx
interface IGaugeProps {
    /**
     * min value of the gauge 
     * @example 0
     */
    min: number;
    /**
     * max value of the gauge 
     * @example 100
     */
    max: number;
    /**
     * value of the gauge 
     * @example 72
     */
    value: number;

    /**
     * colors array. 
     * color: name of the color. 
     * stopAt: length of color distribution. 
     * 
     * default is blue, green, yellow, red colors at equal length
     * @example
     * [
     *   { color: '#4caf50', stopAt: 60 },
     *   { color: '#ff9800', stopAt: 85 },
     *   { color: '#f44336', stopAt: 100 },
     * ]
     */
    colors?: Array<{ color: string, stopAt: number }>;
    /**
     * label
     * no default value
     * @example Percentage
     * ```tsx
     * label={() => <div>72%</div>}
     * ```
     */
    label?: () => JSX.Element,
    /**
     * if true show legend.
     * default is false 
     */
    legend?: boolean,
    /**
     * color of the ticks.
     * default is white
     */
    tickColor?: string,
    /**
     * class name(s) for additional styling
     */
    className?: string,
    /**
     * additional inline styles
     */
    styles?: React.CSSProperties

    /**
     * if true show gradient colors
     * default is false
     */
    gradient?: boolean,
    /**
     * thickness of the gauge 
     * This value is defend on the radius 
     * default is radius * 0.11
     * max value is radius * 0.25
     * 
     * if you pass a higher value than the max value, max value will be used 
     */
    thickness?: number,
    /**
     * thickness of the large ticks
     * default is 4 
     * min value is 1 
     * max value is 6 
     * 
     * if the given value is higher than the max value, max values will be used 
     * @default 4
     */
    largeTick?: number,
    /**
     * thickness of the small ticks
     * default is 1
     * min values is 1
     * max values is 3
     * 
     * if the given values is higher than the max value, max values will be used
     * @default 1
     */
    smallTick?: number
    /**
     * backbround color of the gauge 
     * default is white
     */
    backgroundColor?: string,
    /**
     * color of the labels 
     * default is #424242
     */
    labelColor?: string,
    /**
     * color of the needle 
     * default is gray
     */
    needleColor?: string
}
```

## Usage

```tsx
import { IGaugeProps } from 'uxp/components';
```

