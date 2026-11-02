# undefined


A tool of the MarkdownEditor formatting toolbar, for `formattingTools`.
'undo', 'redo' and 'clearFormatting' exist in rich mode only.


## Definition

```tsx
export type MarkdownFormattingTool =
    | 'undo'
    | 'redo'
    | 'bold'
    | 'italic'
    | 'strikethrough'
    | 'heading1'
    | 'heading2'
    | 'heading3'
    | 'bulletedList'
    | 'numberedList'
    | 'quote'
    | 'code'
    | 'codeBlock'
    | 'link'
    | 'image'
    | 'table'
    | 'horizontalRule'
    | 'clearFormatting';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

