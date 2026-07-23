# MarkdownPreviewProps


Props for the MarkdownPreview component.


## Definition

```tsx
export interface MarkdownPreviewProps {
    /** Markdown source string to render */
    value: string;
    /** Additional CSS class names */
    className?: string;
    /** Text shown when value is empty */
    emptyText?: string;
    /**
     * When true, render in a clamped read-only form suitable for inline
     * preview triggers — the rendered markdown is line-clamped via CSS
     * and overflow is hidden. Use together with `maxLines`.
     */
    compact?: boolean;
    /** Max visible lines in compact mode. Defaults to 5. */
    maxLines?: number;
}
```

## Usage

```tsx
import { MarkdownPreviewProps } from 'uxp/components';
```

