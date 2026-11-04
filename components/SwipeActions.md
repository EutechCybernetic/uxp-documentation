# SwipeActions


An item with actions that a mouse reveals on hover (a copy button, edit / delete icons).
On touch screens, where there is no hover:
- one action is always shown
- two or more show a ⋯ button; tapping it, or swiping the item left, opens the actions in a
  sheet, one labelled row each

With a mouse it looks and works like a hover toolbar, nothing more.



## Installation

```tsx
import { SwipeActions } from 'uxp/components';
```

## Signature

```tsx
const SwipeActions: React.FunctionComponent<SwipeActionsProps>
```

## Examples

```tsx
tsx
<SwipeActions title={message.subject} actions={<>
    <IconButton icon="phr copy" tooltip="Copy" onClick={copy} />
    <IconButton icon="phr pencil-simple" tooltip="Edit" onClick={edit} />
    <IconButton icon="phr trash" tooltip="Delete" variant="danger" onClick={remove} />
</>}>
    <MessageBody message={message} />
</SwipeActions>
```

## Live preview

[Open SwipeActions in the playground →](<https://story.uxp.iviva.com/?path=/docs/layout-swipeactions--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|actions|React.ReactNode|Yes|-|-|
|title|React.ReactNode|No|-|-|
|children|React.ReactNode|Yes|-|-|
|className|string|No|-|-|

## Related Types

- [SwipeActionsProps](../types/SwipeActionsProps.md)

