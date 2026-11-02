# ActionsSheetProps


Props for the ActionsSheet component


## Definition

```tsx
export interface ActionsSheetProps {
    isOpen: boolean
    onClose: () => void
    /** The item the actions are for, e.g. the row's name */
    title?: React.ReactNode
    /** The actions: buttons (they become labelled rows) */
    children: React.ReactNode
}
```

## Usage

```tsx
import { ActionsSheetProps } from 'uxp/components';
```

