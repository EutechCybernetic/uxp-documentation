# MarkdownEditor

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-markdowneditor--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="MarkdownEditor live demo"
></iframe>



A markdown editor. The value is always markdown (markdown in / markdown out).

In rich mode (default) the Editor tab is a WYSIWYG surface rendered with the
same prose styles as MarkdownPreview — formatting applied via the toolbar is
visible immediately, and a Markdown tab exposes the raw source in a monaco
editor. In markdown mode the classic Write / Preview tabs are shown.

Both panes stay mounted so the editors preserve scroll position on tab switch.



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
<MarkdownEditor mode="markdown" value={md} onChange={setMd} fullWidth />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|
|mode|'rich' \| 'markdown'|No|-|-|
|className|string|No|-|-|
|placeholder|string|No|-|-|
|lineNumbers|boolean|No|-|-|
|indentUnit|number|No|-|-|
|defaultTab|[MarkdownEditorTab](../types/MarkdownEditorTab.md)|No|-|-|
|activeTab|[MarkdownEditorTab](../types/MarkdownEditorTab.md)|No|-|-|
|hideTabs|boolean|No|-|-|
|previewEmptyText|string|No|-|-|
|hideToolbar|boolean|No|-|-|
|compactToolbar|boolean|No|-|-|
|hideFormattingToolbar|boolean|No|-|-|
|imageUploadPath|string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|Programmatically focus the editor |
|setTab|(tab: MarkdownEditorTab) => void|Switch to a specific tab (see {@link MarkdownEditorTab} for the per-mode mapping) |
|toggleTab|() => void|Toggle between the two tabs of the current mode |
|getTab|() => MarkdownEditorTab|Returns the currently active tab ('write'/'preview' in markdown mode, 'editor'/'markdown' in rich mode) |

## Related Types

- [MarkdownEditorProps](../types/MarkdownEditorProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [MarkdownEditorTab](../types/MarkdownEditorTab.md)
- [MarkdownEditorHandlers](../types/MarkdownEditorHandlers.md)

