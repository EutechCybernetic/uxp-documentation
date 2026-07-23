# MarkdownEditorHandlers


Methods exposed by the MarkdownEditor component via ref.


## Definition

```tsx
export interface MarkdownEditorHandlers {
    /** Programmatically focus the editor */
    focus: () => void;
    /** Switch to a specific tab */
    setTab: (tab: 'write' | 'preview') => void;
    /** Toggle between write and preview tabs */
    toggleTab: () => void;
    /** Returns the currently active tab */
    getTab: () => 'write' | 'preview';
}
```

## Usage

```tsx
import { MarkdownEditorHandlers } from 'uxp/components';
```

