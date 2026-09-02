# MarkdownEditorProps


Props for the MarkdownEditor component.


## Definition

```tsx
export interface MarkdownEditorProps extends InputSizeProps, InputStateProps {
    /** Current markdown value */
    value: string;
    /** Callback when the content changes */
    onChange: (value: string) => void;
    /**
     * Editing mode. 'rich' (default) shows a WYSIWYG surface (Editor tab)
     * with a raw Markdown tab; formatting is applied visually and serialized
     * back to markdown. 'markdown' is the classic Write / Preview editor with
     * a monaco source pane. The value is markdown in both modes.
     */
    mode?: 'rich' | 'markdown';
    /** Additional CSS class names */
    className?: string;
    /** Placeholder text shown when the editor is empty */
    placeholder?: string;
    /** Show line numbers in the gutter. Defaults to false. */
    lineNumbers?: boolean;
    /** Spaces per indent level. Defaults to 4. */
    indentUnit?: number;
    /** Which tab is active on mount. Defaults to 'write' (→ 'editor' in rich mode). */
    defaultTab?: MarkdownEditorTab;
    /**
     * Controlled active tab. When provided, the built-in tab strip is hidden
     * and the caller is responsible for switching tabs (e.g. via toolbar buttons).
     */
    activeTab?: MarkdownEditorTab;
    /** Hide the built-in tab strip. Use with ref handlers or activeTab for external control. */
    hideTabs?: boolean;
    /** Text shown in the preview pane when value is empty (markdown mode only) */
    previewEmptyText?: string;
    /** Hide the CodeEditor toolbar entirely */
    hideToolbar?: boolean;
    /** Show a compact icon-only toolbar instead of the full button-group toolbar */
    compactToolbar?: boolean;
    /**
     * Hide the markdown formatting toolbar (bold, italic, headings, lists,
     * quote, code, link, image). The toolbar is shown by default; set this
     * to opt out (e.g. tiny inline usages).
     */
    hideFormattingToolbar?: boolean;
    /**
     * Content-store path for images uploaded via the rich-mode image picker.
     * Passed through to the ImagePickerModal (defaults to the modal's own path).
     */
    imageUploadPath?: string;
}
```

## Usage

```tsx
import { MarkdownEditorProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [MarkdownEditorTab](../types/MarkdownEditorTab.md)

