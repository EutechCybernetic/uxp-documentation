# useEventSubscriber

This helps you to subscribe to a custom event dispatched through the eventDispatcher



## Installation

```tsx
import { useEventSubscriber } from 'uxp/components';
```

## Signature

```tsx
function useEventSubscriber(instanceId: string, eventName: string, callback: (data?: { [key: string]: any }) => void): IEventSubscriber
```

## Examples

```tsx
useEventSubscriber(props.instanceId, "my-custom-event", (data?: any) => {
     console.log(data?.message)
 })
```

## Related Types

- [IEventSubscriber](../types/IEventSubscriber.md)

