# MobileToolbarAction

An icon button on the right of the toolbar


## Definition

```tsx
export interface MobileToolbarAction {
    id: string
    icon: string
    /** Accessible name and tooltip */
    label: string
    onClick: () => void
    /** Highlighted, e.g. while the panel it opens is open */
    active?: boolean
    /** A small dot, e.g. when filters are on */
    dot?: boolean
    loading?: boolean
    disabled?: boolean
}
```

## Usage

```tsx
import { MobileToolbarAction } from 'uxp/components';
```

