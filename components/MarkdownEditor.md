# MarkdownEditor


A markdown editor with a Write / Preview tab switcher.
Write tab uses CodeEditor with markdown syntax highlighting.
Preview tab renders the markdown using MarkdownPreview with UXP prose styles.

Both panes stay mounted so the editor preserves scroll position on tab switch.



## Installation

```tsx
import { MarkdownEditor } from 'uxp/components';
```

## Signature

```tsx
const MarkdownEditor: React.ForwardRefExoticComponent<React.RefAttributes<MarkdownEditorHandlers> & MarkdownEditorProps>
```

## Examples

```tsx
tsx
<MarkdownEditor value={md} onChange={setMd} fullWidth height="400px" />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|className|string|No|-|-|
|placeholder|string|No|-|-|
|lineNumbers|boolean|No|-|-|
|indentUnit|number|No|-|-|
|defaultTab|'write' \| 'preview'|No|-|-|
|activeTab|'write' \| 'preview'|No|-|-|
|hideTabs|boolean|No|-|-|
|previewEmptyText|string|No|-|-|
|hideToolbar|boolean|No|-|-|
|compactToolbar|boolean|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|Programmatically focus the editor |
|setTab|(tab: 'write' \| 'preview') => void|Switch to a specific tab |
|toggleTab|() => void|Toggle between write and preview tabs |
|getTab|() => 'write' \| 'preview'|Returns the currently active tab |

## Related Types

- [MarkdownEditorProps](../types/MarkdownEditorProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [MarkdownEditorHandlers](../types/MarkdownEditorHandlers.md)

