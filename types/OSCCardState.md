# OSCCardState


What a custom card (renderCard) gets besides the row


## Definition

```tsx
export interface OSCCardState {
    /** Ticked for bulk actions */
    selected: boolean
    /** Its details are open */
    active: boolean
    /** Ticks or unticks it (undefined when the list has no select column) */
    toggleSelect?: () => void
    /** Opens it (the details panel, or the list's row click) */
    open: (e: React.MouseEvent<HTMLDivElement>) => void
}
```

## Usage

```tsx
import { OSCCardState } from 'uxp/components';
```

