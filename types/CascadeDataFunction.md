# CascadeDataFunction


Paginated loader for a cascading level — an extension of `IDataFunction` where the
selected primary value, and (when known) its option object, arrive as explicit
parameters instead of hiding inside `args`.

`args` still carries `{ query }` — the debounced search text — exactly as Select
passes it to a plain `IDataFunction`.

`primaryOption` is `undefined` for hydrated saved values: the option object is only
known once the user re-picks the primary. Treat `primary` as the source of truth.


## Definition

```tsx
export type CascadeDataFunction = (max: number, lastPageToken: string,
    primary: string, primaryOption?: any, args?: any) =>
    Promise<{ items: Array<any>, pageToken: string, total?: number }>
```

## Usage

```tsx
import { CascadeDataFunction } from 'uxp/components';
```

