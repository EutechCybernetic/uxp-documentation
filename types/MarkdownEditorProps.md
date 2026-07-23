# MarkdownEditorProps


Props for the MarkdownEditor component.


## Definition

```tsx
export interface MarkdownEditorProps extends InputSizeProps, InputStateProps {
    /** Current markdown value */
    value: string;
    /** Callback when the content changes */
    onChange: (value: string) => void;
    /** Additional CSS class names */
    className?: string;
    /** Placeholder text shown when the editor is empty */
    placeholder?: string;
    /** Show line numbers in the gutter. Defaults to false. */
    lineNumbers?: boolean;
    /** Spaces per indent level. Defaults to 4. */
    indentUnit?: number;
    /** Which tab is active on mount. Defaults to 'write'. */
    defaultTab?: 'write' | 'preview';
    /**
     * Controlled active tab. When provided, the built-in Write/Preview tab strip is hidden
     * and the caller is responsible for switching tabs (e.g. via toolbar buttons).
     */
    activeTab?: 'write' | 'preview';
    /** Hide the built-in Write/Preview tab strip. Use with ref handlers or activeTab for external control. */
    hideTabs?: boolean;
    /** Text shown in the preview pane when value is empty */
    previewEmptyText?: string;
    /** Hide the CodeEditor toolbar entirely */
    hideToolbar?: boolean;
    /** Show a compact icon-only toolbar instead of the full button-group toolbar */
    compactToolbar?: boolean;
}
```

## Usage

```tsx
import { MarkdownEditorProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

