# ChatMessage


A message in a ChatComponent.


## Definition

```tsx
export interface ChatMessage {
    /** Unique id */
    id: string
    /** Who wrote it. Equal to `currentUserKey`: the message is the user's own (it can be edited and deleted). */
    authorKey: string
    /** The author's name */
    authorName: string
    /** The author's picture (a URL). Without it the initials show. */
    authorImage?: string
    /** The message as markdown */
    text: string
    /** When it was sent: a Date, an ISO date string or milliseconds */
    time: Date | string | number
    /** Attached files */
    files?: ChatFile[]
    /**
     * The message this one replies to. Give the id; the author, picture, time, text and file name
     * are taken from the loaded messages when left out.
     */
    replyTo?: ChatReplyQuote
    /** Hidden by a moderator: drawn faded (for staff, who still see it) */
    hidden?: boolean
    /** A line above the message, e.g. who hid it and why */
    note?: React.ReactNode
    /** The message was changed after it was sent: "(edited)" follows it */
    edited?: boolean
    /**
     * Drawn in place of the markdown text, e.g. cards, tables or a form.
     * `text` is still what Copy copies.
     */
    content?: React.ReactNode
    /** A line under the message, e.g. how long an answer took and its actions */
    footer?: React.ReactNode
}
```

## Usage

```tsx
import { ChatMessage } from 'uxp/components';
```

## Related Types

- [ChatFile](../types/ChatFile.md)
- [ChatReplyQuote](../types/ChatReplyQuote.md)

