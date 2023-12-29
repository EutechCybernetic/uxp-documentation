# useMessageBus



This hook is used to subscribe to a channel on the message bus.
The hook takes care of initialization and unsubscribing after the component unmounts



## Installation



```tsx
import {useMessageBus} from 'uxp/components';
```

## Examples



```tsx
useMessageBus(props.uxpContext, "visitor-arrival", (payload, channel) => {
     getVisitorArrivals();
     Toast.info("Your visitor is here")
     return "updated"
})
```

