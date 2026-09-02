# CodeEditorHandlers


Methods exposed by the CodeEditor component via ref.


## Definition

```tsx
export interface CodeEditorHandlers {
    /** Programmatically focus the editor */
    focus: () => void;
    /** Validate the current content. Returns validation result with valid flag, error message, and current code. */
    validate: () => { valid: boolean; error: string; code: string };
    /**
     * Wrap the current selection with `before`/`after`. When the selection is
     * empty, inserts `before + after` at the cursor and places the caret
     * between them. Markdown-agnostic — e.g. `wrapSelection('**','**')` for bold.
     */
    wrapSelection: (before: string, after: string) => void;
    /** Insert `text` at the cursor, replacing any active selection. */
    insertAtCursor: (text: string) => void;
    /**
     * Toggle a line prefix across every line the selection touches (or the
     * cursor line). If ALL touched lines already start with `prefix` (after
     * leading whitespace) the prefix is removed; otherwise it is added to the
     * lines lacking it. Handles `# `, `- `, `> ` style prefixes. Special case:
     * when `prefix` is `'1. '` any existing `^\s*\d+\. ` counts as "has prefix"
     * (numbered lists), so toggling off removes whatever number is present.
     */
    toggleLinePrefix: (prefix: string) => void;
    /** Returns the currently selected text (empty string when nothing is selected). */
    getSelectionText: () => string;
}
```

## Usage

```tsx
import { CodeEditorHandlers } from 'uxp/components';
```

