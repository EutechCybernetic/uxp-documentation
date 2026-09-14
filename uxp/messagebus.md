# Real-time messaging

Besides calling Lucy and waiting for an answer, your components can be told when something happens. The
message bus is a websocket channel the backend pushes messages down, so a screen can react to an event
instead of polling for it.

## Subscribing

`useMessageBus(uxpContext, channel, callback)` subscribes the component to a channel and calls back with
each message (`src/components/realtime/messagebus/useMessageBus.tsx:23-76`).

```tsx
import { useMessageBus } from 'uxp/components';

useMessageBus(props.uxpContext, 'visitor-management/arrival', (payload, channel) => {
    loadVisitors();
});
```

The callback receives the payload as a string and the channel it arrived on. The hook unsubscribes when the
component unmounts, so there is nothing to clean up yourself. It subscribes once, on mount: the channel is
read at that point, so pass a channel that does not change for the life of the component.

## Publishing from the frontend

`publishMessage(uxpContext, channel, message)` sends a message. The payload is a string, so serialize
anything structured yourself.

```tsx
import { publishMessage } from 'uxp/components';

await publishMessage(props.uxpContext, 'visitor-management/arrival', JSON.stringify({ visitorId: 123 }));
```

From the backend, a Lucy sequence publishes with the PublishMessage block, naming the same channel.

## The transport

One SignalR websocket connection per page, opened on the first subscription and shared by every component on
the page. It reconnects on its own if it drops, backing off between attempts, and re-establishes the
subscriptions it held. You do not manage the connection.

Keep payloads small. The bus is for telling a client that something happened, not for delivering the data
itself. If there is a lot to send, publish a short message and let the client fetch the payload with a
normal service call.

## Naming channels

Channel names are plain strings, and any client can subscribe to any name, so the name is the only thing
separating your traffic from everyone else's. Prefix every channel with your app or bundle id:

| Situation | Name it like |
|---|---|
| A broadcast many clients care about | `envoy-visitor-management/arrival` |
| Messages for one user only | `envoy-visitor-management/arrival/<userKey>` |
| A reply to one request | A generated UUID, sent to the backend as a parameter of the call |
| Anything sensitive | A generated UUID, registered on the backend, never a guessable name |

For a one-off reply, generate the channel name on the client, subscribe to it, and pass it as a parameter to
the action you are calling. The sequence publishes progress and the final result to that name, which is what
lets a long-running or queued job report back.

Because a subscription is open to anyone who knows the name, never publish anything down a channel that the
subscriber should not be allowed to read.

## Polling with a real-time hint

The strongest pattern is both: poll on a long interval so a missed message is eventually corrected, and
subscribe to a channel so a change shows up immediately. `useEffectWithPolling` is exactly that
(`src/hooks/useEffectWithPolling.tsx`):

```tsx
import { useEffectWithPolling } from 'uxp/components';

useEffectWithPolling(props.uxpContext, 'visitor-management/arrival', 60000, loadVisitors, [siteKey]);
```

The callback runs when the dependencies change, on every interval, and whenever a message arrives on the
channel. That keeps the screen correct through a browser reload or a brief network drop, without polling
every few seconds.

## Where to go next

- [useMessageBus](../hooks/useMessageBus.md) and [useEffectWithPolling](../hooks/useEffectWithPolling.md)
- [Events and synchronization](../v5/events.md): the in-page event bus, for components talking to each other
- [Talking to Lucy](./lucy.md): the request side
