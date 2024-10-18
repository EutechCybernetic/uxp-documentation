# ITimeObj








```tsx
interface ITimeObj {
    /**
    * hours in 12h
    */
    hours: number,
    /**
     * mins
     */
    mins: number,
    /**
     * secs
     */
    secs: number
    /**
     * is am or pm
     */
    evening: boolean,
    /**
     * time string (Ex: 01:10:00 pm)
     */
    timeString: string,
    /**
     * date object
     */
    date: Date,
}
```

## Usage



```tsx
import {ITimeObj} from 'uxp/components';
```

