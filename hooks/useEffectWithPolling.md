# useEffectWithPolling



This is similar to useEffect hook in react.
This is more like a advanced version of react useEffect. Here callback function get executed not only when the dependencies changes, but in regular intervals.
Also you can push a message through message bus to trigger the callback





## Installation



```tsx
import {useEffectWithPolling} from 'uxp/components';
```

## Examples



```tsx
useEffectWithPolling(props.uxpContext, "visitor-arrivals", 5000, getVisitors, [props])
```

