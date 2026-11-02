# ChatSendData


What a send hands to `onSend`.


## Definition

```tsx
export interface ChatSendData {
    /** The message as markdown. Empty when only files are sent. */
    text: string
    /** The files to attach, as picked. The caller saves them. */
    files: File[]
    /** With `uploadFile`: what it returned for each file, in the order of `files` */
    uploads?: unknown[]
    /** Id of the message this one replies to */
    replyToId?: string
    /** Editing (`initialFiles`): the files of the message the user kept. Files removed from it are left out. */
    keptFiles?: ChatFile[]
}
```

## Usage

```tsx
import { ChatSendData } from 'uxp/components';
```

## Related Types

- [ChatFile](../types/ChatFile.md)

