# IDataFunction

## Definition

```tsx
type IDataFunction = (max: number, lastPageToken: string, args?: any) => Promise<{ items: Array<any>, pageToken: string, total?: number }>;
```

## Usage

```tsx
import { IDataFunction } from 'uxp/components';
```

