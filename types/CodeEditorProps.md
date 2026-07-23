# CodeEditorProps


Props for the CodeEditor component.


## Definition

```tsx
export interface CodeEditorProps extends InputSizeProps, InputStateProps {
    /** Current editor value */
    value: string;
    /** Callback when the content changes */
    onChange: (value: string) => void;
    /** Syntax highlighting language. Defaults to 'text'. */
    language?: CodeEditorLanguage;
    /** Callback on editor focus */
    onFocus?: () => void;
    /** Callback on editor blur, receives current value */
    onBlur?: (value: string) => void;
    /** Additional CSS class names */
    className?: string;
    /** Placeholder text shown when the editor is empty */
    placeholder?: string;
    /** Show line numbers in the gutter. Defaults to false. */
    lineNumbers?: boolean;
    /** Spaces per indent level. Defaults to 4. */
    indentUnit?: number;
    /** Extra TypeScript .d.ts content to register for autocomplete (JS/TS only). */
    extraLibs?: { content: string; filename: string }[];
    /** Grow to fit content with no internal scrolling. Do not combine with a fixed `height`. */
    autoHeight?: boolean;
    /** Hide the toolbar completely. */
    hideToolbar?: boolean;
    /** Show the toolbar as icon-only buttons (no text labels). */
    compactToolbar?: boolean;
}
```

## Usage

```tsx
import { CodeEditorProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [CodeEditorLanguage](../types/CodeEditorLanguage.md)

