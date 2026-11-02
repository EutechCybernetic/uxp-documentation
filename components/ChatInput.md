# ChatInput

> **Part of [ChatComponent](ChatComponent.md).** Usually used through ChatComponent. Use it directly to build a custom layout.


The message box of a chat: a rich text box (MarkdownEditor), Attach and Formatting on the left
and Send on the right. Formatting shows the formatting tools above the text box; phones get the
common tools in one row that scrolls sideways.

- Enter sends and Shift+Enter starts a new line. On phones Enter starts a new line and Send is the button.
- Attach, or files dropped on the box, queue the files as chips with a remove button.
  With `uploadFile` each file uploads at once and its chip shows the progress. Send waits for them.
  A file over the size limit, or of a type not allowed, says why and can only be removed.
- On phones Attach opens a sheet: Take a photo, Photo library, Choose a file.
- `replyTo` shows a reply bar ("Replying to …" and the first line) with × to cancel.
- `editing` edits a message in place: `initialValue` and `initialFiles` fill the box, Cancel and
  Save take the place of Send, and Escape cancels.

ChatComponent uses it. Use it alone for a message box without the list.



## Installation

```tsx
import { ChatInput } from 'uxp/components';
```

## Signature

```tsx
const ChatInput: React.ForwardRefExoticComponent<React.RefAttributes<ChatInputHandlers> & ChatInputProps>
```

## Examples

```tsx
tsx
const [replyTo, setReplyTo] = useState<ChatReplyQuote>(null);
<ChatInput
    replyTo={replyTo}
    onCancelReply={() => setReplyTo(null)}
    onSend={(data) => { save(data); setReplyTo(null); }}
/>
```

## Live preview

[Open ChatInput in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-chatinput--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|onSend|(data: ChatSendData) => void|Yes|-|onSend={(data) => console.log(data.text, data.files)}|
|replyTo|ChatReplyQuote \| null|No|-|-|
|onCancelReply|() => void|No|-|-|
|placeholder|string|No|-|"Write a message"|
|allowAttachments|boolean|No|-|-|
|maxFileSizeMB|number|No|-|-|
|allowedFileTypes|string[]|No|-|-|
|uploadFile|[ChatUploadFile](../types/ChatUploadFile.md)|No|-|-|
|dropZone|boolean|No|-|-|
|disabled|boolean|No|-|-|
|editing|boolean|No|-|-|
|onCancel|() => void|No|-|-|
|initialValue|string|No|-|-|
|initialFiles|[ChatFile[]](../types/ChatFile.md)|No|-|-|
|className|string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|Puts the caret in the text box |
|addFiles|(files: File[]) => void|Adds files to the queue, as if they were dropped |

## Related Types

- [ChatInputProps](../types/ChatInputProps.md)
- [ChatSendData](../types/ChatSendData.md)
- [ChatFile](../types/ChatFile.md)
- [ChatReplyQuote](../types/ChatReplyQuote.md)
- [ChatUploadFile](../types/ChatUploadFile.md)
- [ChatInputHandlers](../types/ChatInputHandlers.md)

