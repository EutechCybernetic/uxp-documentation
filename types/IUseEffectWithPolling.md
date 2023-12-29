# IUseEffectWithPolling









```tsx
type IUseEffectWithPolling = (
    /**
     * UXP Context. You can get this from props (props.uxContext)
     */
    context: any,
    /**
     * message bus channel name
     */
    channel: string,
    /**
     * time interval in milliseconds
     */
    interval: number,
    /**
     * callback function to call when triggered
     */
    callback: () => Promise<void>,
    /**
     * list of dependencies  
     */
    deps: any[]
) => void
```

## Usage



```tsx
import {IUseEffectWithPolling} from 'uxp/components';
```

