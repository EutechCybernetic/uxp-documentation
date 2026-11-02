# ChatComponent


A chat: the messages and a message box. It has no server knowledge: messages come in through
props and a send goes out through `onSend`.

- Flat rows, like Slack: the picture, name, chips (`renderChips`) and time head each run of
  messages by one person. The other messages of a run show the time in the gutter on hover.
  No bubble around a message.
- A line with the day separates days. "New messages" marks `firstUnreadId`.
- Reply quotes a message: only a reply draws a card, like Slack: the author's picture, name and
  time on one line, then one line of the text (or a file icon and the file name).
  A click on the card scrolls to the original and highlights it. Replies never nest.
- `density="compact"`: small pictures, a narrow gutter and tight rows, for side panels.
- Markdown, with inline `code` and fenced code blocks. A long code line scrolls inside its block;
  long words wrap. Nothing scrolls sideways.
- Pictures and videos with a `url` show as thumbnails. A click opens them large in a viewer
  (previous and next, the arrow keys, Download). Other files are chips.
- Actions: on the web Reply and Copy show on hover, with ⋯ for the rest (`actions`, and Edit
  and Delete on the user's own messages). On phones press and hold, or swipe a message left,
  for a sheet with the same actions.
- Edit (`onEdit`) opens the message box in place of the message, with Cancel and Save.
  Delete (`onDelete`) asks once. Both are off, with the reason, when another message quotes it
  or when `canEdit` / `canDelete` give a reason. "(edited)" follows an edited message.
- Scrolling to the top loads older messages (`hasOlder`, `onLoadOlder`); the position stays put.
- Files dropped anywhere on the chat queue in the message box. The drop area covers the list.
- A send that fails stays in the list with "Not sent", Retry and Delete.
- `readOnly` puts a notice in place of the message box.

Give it a height (it fills its parent): the list scrolls, the message box stays at the bottom.



## Installation

```tsx
import { ChatComponent } from 'uxp/components';
```

## Signature

```tsx
const ChatComponent: React.FunctionComponent<ChatComponentProps>
```

## Examples

```tsx
tsx
<ChatComponent
    messages={messages}
    currentUserKey={context.userKey}
    onSend={async ({ text, files, replyToId }) => { await savePost(text, files, replyToId); await reload(); }}
    onEdit={async (message, { text }) => { await editPost(message.id, text); await reload(); }}
    onDelete={async (message) => { await deletePost(message.id); await reload(); }}
    hasOlder={hasOlder}
    onLoadOlder={loadOlder}
    actions={(m) => isStaff ? [{ id: 'answer', label: 'Mark as answer', icon: 'fal circle-check', onClick: markAnswer }] : []}
/>

// In a side panel: compact rows
<ChatComponent density="compact" messages={messages} currentUserKey={context.userKey} onSend={send} />
```

## Live preview

[Open ChatComponent in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-chatcomponent--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|messages|[ChatMessage[]](../types/ChatMessage.md)|Yes|-|[ { id: '1', authorKey: 'asha', authorName: 'asha', text: 'In the Sensors lesso…|
|currentUserKey|string|Yes|-|"me"|
|onSend|(data: ChatSendData) => void \| Promise<void>|No|-|onSend={async (data) => { console.log('send', data); }}|
|onEdit|(message: ChatMessage, edit: ChatEditData) => Promise<void>|No|-|onEdit={async (message, edit) => { console.log('edit', message.id, edit); }}|
|onDelete|(message: ChatMessage) => Promise<void>|No|-|onDelete={async (message) => { console.log('delete', message.id); }}|
|canEdit|(message: ChatMessage) => true \| string|No|-|canEdit={(message) => message.id === '3' ? 'Someone replied to or quoted this m…|
|canDelete|(message: ChatMessage) => true \| string|No|-|-|
|onLoadOlder|() => void \| Promise<void>|No|-|-|
|hasOlder|boolean|No|-|-|
|loading|boolean|No|-|-|
|actions|ChatMessageAction[] \| ((message: ChatMessage) => ChatMessageAction[])|No|-|[ { id: 'answer', label: 'Mark as answer', icon: 'fal circle-check', onClick: (…|
|renderChips|(message: ChatMessage, place: ChatChipPlace) => React.ReactNode|No|-|renderChips={(message, place) => [place.firstInRun && message.authorKey === 'pr…|
|renderAttachment|(file: ChatFile, message: ChatMessage) => React.ReactNode|No|-|-|
|readOnly|boolean|No|-|-|
|readOnlyMessage|React.ReactNode|No|-|"This thread is closed. You can read it but you cannot reply."|
|emptyState|React.ReactNode|No|-|-|
|firstUnreadId|string|No|-|"5"|
|placeholder|string|No|-|"Write a message"|
|allowAttachments|boolean|No|-|-|
|maxFileSizeMB|number|No|-|-|
|allowedFileTypes|string[]|No|-|-|
|uploadFile|[ChatUploadFile](../types/ChatUploadFile.md)|No|-|-|
|density|'comfortable' \| 'compact'|No|'comfortable'|-|
|className|string|No|-|-|

## Related Types

- [ChatComponentProps](../types/ChatComponentProps.md)
- [ChatMessage](../types/ChatMessage.md)
- [ChatFile](../types/ChatFile.md)
- [ChatReplyQuote](../types/ChatReplyQuote.md)
- [ChatSendData](../types/ChatSendData.md)
- [ChatEditData](../types/ChatEditData.md)
- [ChatMessageAction](../types/ChatMessageAction.md)
- [ChatChipPlace](../types/ChatChipPlace.md)
- [ChatUploadFile](../types/ChatUploadFile.md)

