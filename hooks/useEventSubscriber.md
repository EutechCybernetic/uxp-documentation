# useEventSubscriber



This helps you to subscribe to a custom event dispatched through the eventDispatcher



## Installation



```tsx
import {useEventSubscriber} from 'uxp/components';
```

## Examples



```tsx
useEventSubscriber(props.instanceId, "my-custom-event", (data?: any) => {
     console.log(data?.message)
 })
```

