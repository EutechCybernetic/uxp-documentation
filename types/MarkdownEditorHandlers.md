# MarkdownEditorHandlers


Methods exposed by the MarkdownEditor component via ref.


## Definition

```tsx
export interface MarkdownEditorHandlers {
    /** Programmatically focus the editor */
    focus: () => void;
    /** Switch to a specific tab (see {@link MarkdownEditorTab} for the per-mode mapping) */
    setTab: (tab: MarkdownEditorTab) => void;
    /** Toggle between the two tabs of the current mode */
    toggleTab: () => void;
    /** Returns the currently active tab ('write'/'preview' in markdown mode, 'editor'/'markdown' in rich mode) */
    getTab: () => MarkdownEditorTab;
}
```

## Usage

```tsx
import { MarkdownEditorHandlers } from 'uxp/components';
```

## Related Types

- [MarkdownEditorTab](../types/MarkdownEditorTab.md)

