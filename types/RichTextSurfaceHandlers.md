# RichTextSurfaceHandlers


Methods exposed by RichTextSurface via ref.


## Definition

```tsx
export interface RichTextSurfaceHandlers {
    /** Focus the editable surface */
    focus: () => void;
    /** Apply a formatting command at the current selection */
    exec: (command: RichCommand, arg?: RichCommandArg) => void;
    /**
     * Snapshot the current selection Range (cloned). Call before opening an
     * anchored panel (link/image) — the 'link'/'image' commands restore it
     * before inserting so the insert lands where the user's caret was.
     */
    saveSelection: () => void;
    /** Plain text of the current selection inside the surface ('' when none) */
    getSelectionText: () => string;
}
```

## Usage

```tsx
import { RichTextSurfaceHandlers } from 'uxp/components';
```

## Related Types

- [RichCommand](../types/RichCommand.md)
- [RichCommandArg](../types/RichCommandArg.md)

