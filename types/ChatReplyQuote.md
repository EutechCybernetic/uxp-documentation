# ChatReplyQuote


The message a reply quotes. The quote card shows the author's picture, name and time on one line,
then one line of the text (or the file name when there is no text). Fields left out are taken
from the original message when it is loaded.


## Definition

```tsx
export interface ChatReplyQuote {
    /** Id of the quoted message */
    id: string
    /** Who wrote the quoted message */
    authorName?: string
    /** The quoted message's text (markdown). One line shows, as plain text. */
    text?: string
    /** When the quoted message was sent: a Date, an ISO date string or milliseconds */
    time?: Date | string | number
    /** The quoted author's picture (a URL). Without it the initial shows. */
    authorImage?: string
    /** A file of the quoted message, shown with a file icon when it has no text */
    fileName?: string
}
```

## Usage

```tsx
import { ChatReplyQuote } from 'uxp/components';
```

