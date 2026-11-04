# ActionsSheet


A bottom sheet with an item's actions, one labelled row each. Buttons passed in become rows
(an icon-only button shows its tooltip as the label). The sheet closes when a row is tapped,
before the action runs, so a confirm or form the action opens shows on its own.
SwipeActions, TreeView nodes and table rows use it on touch screens.



## Installation

```tsx
import { ActionsSheet } from 'uxp/components';
```

## Signature

```tsx
const ActionsSheet: React.FunctionComponent<ActionsSheetProps>
```

## Examples

```tsx
tsx
<ActionsSheet isOpen={open} onClose={() => setOpen(false)} title={item.name}>
    <ButtonComponent title="Edit" leftIcon="phr pencil-simple" onClick={edit} />
    <ButtonComponent title="Delete" leftIcon="phr trash" variant="danger" onClick={remove} />
</ActionsSheet>
```

## Live preview

[Open ActionsSheet in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-actionssheet--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|title|React.ReactNode|No|-|-|
|children|React.ReactNode|Yes|-|-|

## Related Types

- [ActionsSheetProps](../types/ActionsSheetProps.md)

