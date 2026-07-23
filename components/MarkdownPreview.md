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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|className|string|No|-|-|
|emptyText|string|No|-|-|
|compact|boolean|No|-|-|
|maxLines|number|No|-|-|

## Related Types

- [MarkdownPreviewProps](../types/MarkdownPreviewProps.md)

