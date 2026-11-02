# ChatInputProps


Props for the ChatInput component


## Definition

```tsx
export interface ChatInputProps {
    /**
     * Called when the user sends. The box empties straight away.
     * @example onSend={(data) => console.log(data.text, data.files)}
     */
    onSend: (data: ChatSendData) => void
    /** The message being replied to. Shows the reply bar above the text box. */
    replyTo?: ChatReplyQuote | null
    /** Called by × on the reply bar. Clear `replyTo` here, and after a send. */
    onCancelReply?: () => void
    /**
     * Shown while the text box is empty. Defaults to "Write a message".
     * @example "Write a message"
     */
    placeholder?: string
    /** Show the Attach button and take dropped files. Defaults to true. */
    allowAttachments?: boolean
    /** Largest file in MB. Defaults to the account's upload limit (none when it has none). */
    maxFileSizeMB?: number
    /** File types allowed: MIME types or extensions, e.g. ['image/*', '.pdf']. Defaults to any type. */
    allowedFileTypes?: string[]
    /** Uploads each file as soon as it is queued, with progress. Without it the files go to `onSend` as they are. */
    uploadFile?: ChatUploadFile
    /** Files dragged over the box show a drop area on it. Defaults to true. ChatComponent turns it off and covers the whole list instead. */
    dropZone?: boolean
    /** Grey the box out: no typing, no send */
    disabled?: boolean
    /**
     * Edit mode: the box edits a message in place. Cancel and Save take the place of Send,
     * Escape cancels and the text is kept after Save (close the box when the save is done).
     */
    editing?: boolean
    /** Edit mode: called by Cancel and by Escape */
    onCancel?: () => void
    /** The starting text (markdown), e.g. the message being edited */
    initialValue?: string
    /** The files already on the message being edited. They show as chips and can be removed. */
    initialFiles?: ChatFile[]
    className?: string
}
```

## Usage

```tsx
import { ChatInputProps } from 'uxp/components';
```

## Related Types

- [ChatSendData](../types/ChatSendData.md)
- [ChatFile](../types/ChatFile.md)
- [ChatReplyQuote](../types/ChatReplyQuote.md)
- [ChatUploadFile](../types/ChatUploadFile.md)

