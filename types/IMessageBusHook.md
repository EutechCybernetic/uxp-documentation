# IMessageBusHook




## Definition

```tsx
type IMessageBusHook = (
    context: IContextProvider,
    channel: string,
    callback: (payload: string, channel: string) => void
) => void;
```

## Usage

```tsx
import { IMessageBusHook } from 'uxp/components';
```

