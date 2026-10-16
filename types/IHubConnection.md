# IHubConnection


A connection to a server SignalR hub, as returned by `connectHub`.


## Definition

```tsx
export interface IHubConnection {
    /** Listen to a method the server calls on the client. */
    on: (method: string, handler: (...args: any[]) => void) => void;
    /** Stop listening. */
    off: (method: string, handler: (...args: any[]) => void) => void;
    /** Call a hub method on the server. */
    invoke: (method: string, ...args: any[]) => Promise<any>;
    /** Called after the connection comes back; hub groups are lost on a new connection, so join them again here. */
    onReconnected: (callback: () => void) => void;
}
```

## Usage

```tsx
import { IHubConnection } from 'uxp/components';
```

