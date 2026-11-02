# ChatComponentProps


Props for the ChatComponent


## Definition

```tsx
export interface ChatComponentProps {
    /**
     * The messages, oldest first
     * @example
     * [
     *   { id: '1', authorKey: 'asha', authorName: 'asha', text: 'In the Sensors lesson the transmitter has two wires. Which one carries the 4-20 mA signal?', time: '2026-10-20T10:12:00', files: [{ name: 'transmitter-wiring.jpg', size: 245760, type: 'image/jpeg' }] },
     *   { id: '2', authorKey: 'nimal', authorName: 'nimal', text: 'I think it is the black wire. I am not sure.', time: '2026-10-20T10:40:00' },
     *   { id: '3', authorKey: 'priya', authorName: 'Priya Nair', text: 'Both wires carry it. A 4-20 mA loop is one series circuit. The current leaves the supply on the `+` wire and returns on the `-` wire.', time: '2026-10-20T11:05:00', files: [{ name: '4-20mA-loop.pdf', size: 1153434, type: 'application/pdf' }] },
     *   { id: '3b', authorKey: 'priya', authorName: 'Priya Nair', text: 'The loop check:\n\n```\nLoop AI-3   4-20 mA   range 0-10 bar\n24 V DC (+) -> TX (+)   TX (-) -> AI-3 (+)   AI-3 (-) -> 0 V common   expect 12.0 mA at 5 bar\n```', time: '2026-10-20T11:07:00' },
     *   { id: '4', authorKey: 'me', authorName: 'Lena', text: 'Thanks. Page 9 of the guide shows the same loop.', time: '2026-10-21T08:30:00', replyTo: { id: '3' }, edited: true },
     *   { id: '5', authorKey: 'nimal', authorName: 'nimal', text: 'Thanks. That clears it up.', time: '2026-10-21T09:02:00' },
     *   { id: '6', authorKey: 'nimal', authorName: 'nimal', text: '', time: '2026-10-21T09:03:00', files: [{ name: 'loop-test.jpg', size: 194560, type: 'image/jpeg' }] },
     *   { id: '7', authorKey: 'priya', authorName: 'Priya Nair', text: 'Good. The meter is in series.', time: '2026-10-21T09:40:00', replyTo: { id: '6' } },
     * ]
     */
    messages: ChatMessage[]
    /**
     * The signed-in user's key. Their own messages can be edited and deleted.
     * @example "me"
     */
    currentUserKey: string
    /**
     * Called when the user sends. Return a promise: while it runs the message shows as sending;
     * when it fails the message stays with "Not sent", Retry and Delete. Add the saved message to
     * `messages` before the promise ends.
     * @example onSend={async (data) => { console.log('send', data); }}
     */
    onSend?: (data: ChatSendData) => void | Promise<void>
    /**
     * Turns on Edit for the user's own messages: the message box opens in place of the message,
     * with Cancel and Save. Return a promise: the box closes when it ends and stays open when it
     * fails. `edit.files` holds the added files, `edit.removedFileIds` the ids of removed ones.
     * Update the message in `messages` (with `edited: true`) before the promise ends.
     * @example onEdit={async (message, edit) => { console.log('edit', message.id, edit); }}
     */
    onEdit?: (message: ChatMessage, edit: ChatEditData) => Promise<void>
    /**
     * Turns on Delete for the user's own messages. The chat asks once before it calls this.
     * Remove the message from `messages` before the promise ends.
     * @example onDelete={async (message) => { console.log('delete', message.id); }}
     */
    onDelete?: (message: ChatMessage) => Promise<void>
    /**
     * Whether the user may edit one of their messages: true, or a text. A text shows Edit turned
     * off, with the text as the reason. Left out: yes, unless another loaded message quotes it.
     * @example canEdit={(message) => message.id === '3' ? 'Someone replied to or quoted this message' : true}
     */
    canEdit?: (message: ChatMessage) => true | string
    /** Whether the user may delete one of their messages, like `canEdit` */
    canDelete?: (message: ChatMessage) => true | string
    /** Called when the user scrolls to the top and `hasOlder` is set. Prepend the older messages. */
    onLoadOlder?: () => void | Promise<void>
    /** There are older messages to load */
    hasOlder?: boolean
    /** The first load: skeleton messages instead of the list */
    loading?: boolean
    /**
     * More actions for a message, in its ⋯ menu (e.g. Mark as answer, Hide).
     * A list, or a function that gives the list for a message.
     * @example
     * [
     *   { id: 'answer', label: 'Mark as answer', icon: 'fal circle-check', onClick: (m) => console.log('answer', m.id) },
     *   { id: 'hide', label: 'Hide', icon: 'fal eye-slash', onClick: (m) => console.log('hide', m.id) },
     * ]
     */
    actions?: ChatMessageAction[] | ((message: ChatMessage) => ChatMessageAction[])
    /**
     * Chips next to the author and time, e.g. Teacher or Accepted answer (uxp Chip).
     * For the first message of a run they go in the header; for the others, above the message.
     * @example renderChips={(message, place) => [place.firstInRun && message.authorKey === 'priya' && <Chip key="teacher" label="Teacher" size="large" />, message.id === '3' && <Chip key="answer" label="Accepted answer" variant="success" icon="fal circle-check" size="large" />]}
     */
    renderChips?: (message: ChatMessage, place: ChatChipPlace) => React.ReactNode
    /**
     * Draws an attached file. Defaults to a thumbnail for a picture or video with a `url` (a click
     * opens the viewer), and a chip with the icon, the name and the size for the others.
     */
    renderAttachment?: (file: ChatFile, message: ChatMessage) => React.ReactNode
    /** No message box: the chat can be read but not answered. Actions keep only Copy. */
    readOnly?: boolean
    /**
     * Why the chat is read only, shown in place of the message box
     * @example "This thread is closed. You can read it but you cannot reply."
     */
    readOnlyMessage?: React.ReactNode
    /** Shown in the list when there are no messages. Defaults to "No messages yet". */
    emptyState?: React.ReactNode
    /**
     * Id of the first unread message: a "New messages" line shows above it
     * @example "5"
     */
    firstUnreadId?: string
    /**
     * Placeholder of the message box
     * @example "Write a message"
     */
    placeholder?: string
    /** Show Attach and take dropped files. Defaults to true. */
    allowAttachments?: boolean
    /** Largest file in MB. Defaults to the account's upload limit. */
    maxFileSizeMB?: number
    /** File types allowed: MIME types or extensions. Defaults to any type. */
    allowedFileTypes?: string[]
    /** Uploads each queued file at once, with progress. Without it the files go to `onSend`. */
    uploadFile?: ChatUploadFile
    /**
     * How tight the rows are. 'comfortable' (the default): large pictures and roomy rows.
     * 'compact': small pictures, a narrow gutter and tight rows, for side panels.
     * @default 'comfortable'
     */
    density?: 'comfortable' | 'compact'
    className?: string
}
```

## Usage

```tsx
import { ChatComponentProps } from 'uxp/components';
```

## Related Types

- [ChatMessage](../types/ChatMessage.md)
- [ChatFile](../types/ChatFile.md)
- [ChatReplyQuote](../types/ChatReplyQuote.md)
- [ChatSendData](../types/ChatSendData.md)
- [ChatEditData](../types/ChatEditData.md)
- [ChatMessageAction](../types/ChatMessageAction.md)
- [ChatChipPlace](../types/ChatChipPlace.md)
- [ChatUploadFile](../types/ChatUploadFile.md)

