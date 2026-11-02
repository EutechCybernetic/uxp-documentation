# useMobileLayer

Registers a full-screen layer on the mobile shell while `active` is true:
the header shows `title` and the footer shows a Close bar that calls `onClose`.
Either may be left out: the newest layer with a title gives the header, the newest with
`onClose` gives the Close bar.
Does nothing outside the mobile shell (desktop, embedded pages).



## Installation

```tsx
import { useMobileLayer } from 'uxp/components';
```

## Signature

```tsx
function useMobileLayer(active: boolean, options: { title?: string, onClose?: () => void }): void
```

## Examples

```tsx
tsx
const [open, setOpen] = useState(false);
useMobileLayer(open, { title: 'Order 1042', onClose: () => setOpen(false) });
```

