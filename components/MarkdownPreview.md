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

[Open MarkdownPreview in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-markdownpreview--docs>)

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

