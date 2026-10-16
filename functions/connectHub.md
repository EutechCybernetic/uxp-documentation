# connectHub

Connect to a server SignalR hub, such as `/lucyhub`. The connection is shared per path and reconnects by itself.
Use it for hubs other than the message bus; for channels use `useMessageBus` and `publishMessage`.




## Installation

```tsx
import { connectHub } from 'uxp/components';
```

## Signature

```tsx
function connectHub(context: { lucyUrl: string }, path: string): Promise<IHubConnection>
```

## Examples

```tsx
const hub = await connectHub(props.uxpContext, '/lucyhub');
hub.on('logger', (feed, time, category, message) => console.log(message));
await hub.invoke('Monitor', props.uxpContext.apiKey, '/eventstream');
```

