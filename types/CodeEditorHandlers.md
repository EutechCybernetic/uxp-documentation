# CodeEditorHandlers


Methods exposed by the CodeEditor component via ref.


## Definition

```tsx
export interface CodeEditorHandlers {
    /** Programmatically focus the editor */
    focus: () => void;
    /** Validate the current content. Returns validation result with valid flag, error message, and current code. */
    validate: () => { valid: boolean; error: string; code: string };
}
```

## Usage

```tsx
import { CodeEditorHandlers } from 'uxp/components';
```

