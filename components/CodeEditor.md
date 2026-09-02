# CodeEditor

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-codeeditor--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="CodeEditor live demo"
></iframe>



Monaco-backed code editor with syntax highlighting, a toolbar (Format,
tab-size cycle, line numbers, fullscreen), and optional auto-grow.

Supports JS/TS extra libs for inline IntelliSense (pass type declaration
strings via `extraLibs`). Exposes a ref handle ({@link CodeEditorHandlers})
for programmatic focus and validation.



## Installation

```tsx
import { CodeEditor } from 'uxp/components';
```

## Signature

```tsx
const CodeEditor: React.ForwardRefExoticComponent<React.RefAttributes<CodeEditorHandlers> & CodeEditorProps>
```

## Examples

```tsx
tsx
<CodeEditor value={code} onChange={setCode} language="javascript" height="300px" />
```

```tsx
tsx
// With ref handle for validation
const ref = useRef<CodeEditorHandlers>(null);
<CodeEditor ref={ref} value={code} onChange={setCode} language="json" />
const { valid, error } = ref.current?.validate() ?? { valid: true, error: '' };
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|language|[CodeEditorLanguage](../types/CodeEditorLanguage.md)|No|-|-|
|onFocus|() => void|No|-|-|
|onBlur|(value: string) => void|No|-|-|
|className|string|No|-|-|
|placeholder|string|No|-|-|
|lineNumbers|boolean|No|-|-|
|indentUnit|number|No|-|-|
|fontSize|number|No|-|-|
|extraLibs|{ content: string; filename: string }[]|No|-|-|
|noBrowserGlobals|boolean|No|-|-|
|autoHeight|boolean|No|-|-|
|hideToolbar|boolean|No|-|-|
|compactToolbar|boolean|No|-|-|
|jsDiagnostics|'curated' \| 'all' \| 'off'|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|Programmatically focus the editor |
|validate|() => { valid: boolean; error: string; code: string }|Validate the current content. Returns validation result with valid flag, error message, and current code. |
|wrapSelection|(before: string, after: string) => void|Wrap the current selection with `before`/`after`. When the selection is empty, inserts `before + after` at the cursor and places the caret between them. Markdown-agnostic — e.g. `wrapSelection('**','**')` for bold. |
|insertAtCursor|(text: string) => void|Insert `text` at the cursor, replacing any active selection. |
|toggleLinePrefix|(prefix: string) => void|Toggle a line prefix across every line the selection touches (or the cursor line). If ALL touched lines already start with `prefix` (after leading whitespace) the prefix is removed; otherwise it is added to the lines lacking it. Handles `# `, `- `, `> ` style prefixes. Special case: when `prefix` is `'1. '` any existing `^\s*\d+\. ` counts as "has prefix" (numbered lists), so toggling off removes whatever number is present. |
|getSelectionText|() => string|Returns the currently selected text (empty string when nothing is selected). |

## Related Types

- [CodeEditorProps](../types/CodeEditorProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [CodeEditorLanguage](../types/CodeEditorLanguage.md)
- [CodeEditorHandlers](../types/CodeEditorHandlers.md)

