# usePageContext


Tells the shell what the user is looking at on this page, as plain text.

- The entry is added when the component mounts, updated when `label` or `text` change, and removed when it unmounts.
- Several parts of a page can each add one, e.g. a list and its details panel.
- Pass `null` to add nothing.
- Other parts of the shell read it with usePageContextValue, e.g. a chat in the header sidebar.
- Long text is cut at 4000 characters.



## Installation

```tsx
import { usePageContext } from 'uxp/components';
```

## Signature

```tsx
function usePageContext(entry: PageContextEntry | null | undefined | false): void
```

## Examples

```tsx
tsx
usePageContext(workOrder && {
    label: `Work order ${workOrder.ID}`,
    text: `Work order: ${workOrder.ID}\nStarts: ${workOrder.StartDate}\nStatus: ${workOrder.Status}`,
});
```

