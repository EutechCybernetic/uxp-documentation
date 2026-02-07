# useMultiEventSubscriber


event handler for multiple events
either can pass a simple configuration with array of event names and a shared callback
of a pull config with different callback for each event.


## Installation

```tsx
import { useMultiEventSubscriber } from 'uxp/components';
```

## Signature

```tsx
function useMultiEventSubscriber(instanceId: string, config: MultiEventSubscriberConfig): void
```

## Related Types

- [MultiEventSubscriberConfig](../types/MultiEventSubscriberConfig.md)
- [SimpleEventConfig](../types/SimpleEventConfig.md)
- [FullEventconfig](../types/FullEventconfig.md)
- [EventConfig](../types/EventConfig.md)

