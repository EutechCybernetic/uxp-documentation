# IGaugeProps




Options that can be passed to a date picker field




```tsx
interface IGaugeProps {
    /**
     * min value of the gauge 
     */
    min: number;
    /**
     * max value of the gauge 
     */
    max: number;
    /**
     * value of the gauge 
     */
    value: number;

    /**
     * colors array. 
     * color: name of the color. 
     * stopAt: length of color distribution. 
     * 
     * default is blue, green, yellow, red colors at equal length
     */
    colors?: Array<{ color: string, stopAt: number }>;
    /**
     * label
     * no default value
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
     */
    largeTick?: number,
    /**
     * thickness of the small ticks
     * default is 1
     * min values is 1
     * max values is 3
     * 
     * if the given values is higher than the max value, max values will be used
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
import {IGaugeProps} from 'uxp/components';
```

