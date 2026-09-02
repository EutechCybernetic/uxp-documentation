# RichTextSurface


WYSIWYG markdown surface — a contenteditable div styled with the same prose
styles as MarkdownPreview. Value in and out is always markdown; HTML only
exists transiently inside the contenteditable.

Caret safety: the surface is uncontrolled. innerHTML is only rewritten when
the incoming `value` differs from the last markdown this surface emitted
(i.e. an external change), never in response to its own edits.


## Installation

```tsx
import { RichTextSurface } from 'uxp/components';
```

## Signature

```tsx
const RichTextSurface: React.ForwardRefExoticComponent<React.RefAttributes<RichTextSurfaceHandlers> & RichTextSurfaceProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(md: string) => void|Yes|-|-|
|readOnly|boolean|No|-|-|
|disabled|boolean|No|-|-|
|placeholder|string|No|-|-|
|onActiveStatesChange|(states: RichActiveStates) => void|No|-|-|
|localize|(key: string) => string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|Focus the editable surface |
|exec|(command: RichCommand, arg?: RichCommandArg) => void|Apply a formatting command at the current selection |
|saveSelection|() => void|Snapshot the current selection Range (cloned). Call before opening an anchored panel (link/image) — the 'link'/'image' commands restore it before inserting so the insert lands where the user's caret was. |
|getSelectionText|() => string|Plain text of the current selection inside the surface ('' when none) |

## Related Types

- [RichTextSurfaceProps](../types/RichTextSurfaceProps.md)
- [RichActiveStates](../types/RichActiveStates.md)
- [RichCommand](../types/RichCommand.md)
- [RichTextSurfaceHandlers](../types/RichTextSurfaceHandlers.md)
- [RichCommandArg](../types/RichCommandArg.md)

