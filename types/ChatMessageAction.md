# ChatMessageAction


An action on a message. On the web it is in the message's ⋯ menu; on phones in the
press-and-hold sheet, between Reply and Copy.


## Definition

```tsx
export interface ChatMessageAction {
    /** Unique id */
    id: string
    /** What it does, e.g. "Mark as answer" */
    label: string
    /** Its icon, e.g. 'fal circle-check' */
    icon: string
    /** Runs the action for the message */
    onClick: (message: ChatMessage) => void | Promise<void>
    /** 'danger' for a destructive action */
    variant?: 'danger'
    /** Keep it in a read-only chat. By default a read-only chat keeps only Copy. */
    showWhenReadOnly?: boolean
}
```

## Usage

```tsx
import { ChatMessageAction } from 'uxp/components';
```

## Related Types

- [ChatMessage](../types/ChatMessage.md)
- [ChatFile](../types/ChatFile.md)
- [ChatReplyQuote](../types/ChatReplyQuote.md)

