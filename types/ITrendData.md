# ITrendData

A single data point in a trend visualization


## Definition

```tsx
interface ITrendData {

    /**
     * The time stamp of when this data point was recorded. This should be a Date object a string that can be parsed into a date object
     */
    time: Date | string,

    /**
     * The value at that point in time
     */
    value: number
}
```

## Usage

```tsx
import { ITrendData } from 'uxp/components';
```

