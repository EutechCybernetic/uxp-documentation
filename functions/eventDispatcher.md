# eventDispatcher

This helps you to dispatch a custom event
Use useEventSubscriber to listen to these events



## Installation

```tsx
import { eventDispatcher } from 'uxp/components';
```

## Signature

```tsx
function eventDispatcher(instanceId: string, eventName: string, data?: { [key: string]: any }): IEventDispatcher
```

## Examples

```tsx
eventDispatcher(props.instanceId, "my-custom-event", {message: "this is a custom event"})
```

## Related Types

- [IEventDispatcher](../types/IEventDispatcher.md)

