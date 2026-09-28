# MarkdownPreview


Renders markdown as styled HTML using UXP typography styles.
Supports headings, paragraphs, lists, code blocks, blockquotes, links, and horizontal rules.



## Installation

```tsx
import { MarkdownPreview } from 'uxp/components';
```

## Signature

```tsx
const MarkdownPreview: React.FunctionComponent<MarkdownPreviewProps>
```

## Examples

```tsx
tsx
<MarkdownPreview value={markdownString} />
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-markdownpreview--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="MarkdownPreview live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"## Maintenance notes\n\n- Filter replaced on **12 Aug**\n- Next check: [schedu…|
|className|string|No|-|-|
|emptyText|string|No|-|-|
|compact|boolean|No|-|-|
|maxLines|number|No|-|-|

## Related Types

- [MarkdownPreviewProps](../types/MarkdownPreviewProps.md)

