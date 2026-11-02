# ChatEditData


What a saved edit hands to `onEdit`.


## Definition

```tsx
export interface ChatEditData {
    /** The new text, as markdown */
    text: string
    /** Files added while editing */
    files: File[]
    /** Ids of the message's files the user removed */
    removedFileIds?: string[]
    /** With `uploadFile`: what it returned for each added file, in the order of `files` */
    uploads?: unknown[]
}
```

## Usage

```tsx
import { ChatEditData } from 'uxp/components';
```

