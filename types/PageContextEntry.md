# PageContextEntry


One piece of what the user is looking at, added by a page with usePageContext.


## Definition

```tsx
export interface PageContextEntry {
    /** Short name for it, e.g. "Work order WO-12" */
    label: string
    /** What it is, as plain text, e.g. "Work order: WO-12\nStatus: Open" */
    text: string
}
```

## Usage

```tsx
import { PageContextEntry } from 'uxp/components';
```

