# ChatInputHandlers


Methods of ChatInput, through its ref.


## Definition

```tsx
export interface ChatInputHandlers {
    /** Puts the caret in the text box */
    focus: () => void
    /** Adds files to the queue, as if they were dropped */
    addFiles: (files: File[]) => void
}
```

## Usage

```tsx
import { ChatInputHandlers } from 'uxp/components';
```

