# PinnedItemsButton


A pin button + quick-pick bubble for a Select/DynamicForm field. Lists the user's
pinned items for the field's object type; clicking one drops it into the field.
Also lets the user pin/unpin the current selection (v4 Pinboard parity).


## Installation

```tsx
import { PinnedItemsButton } from 'uxp/components';
```

## Signature

```tsx
const PinnedItemsButton: React.FunctionComponent<PinnedItemsButtonProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|objectType|string|Yes|-|-|
|objectTypeLabel|string|No|-|-|
|labelField|string|No|-|-|
|valueField|string|No|-|-|
|currentItem|PinboardCurrentItem \| null|No|-|-|
|onSelect|(option: any) => void|Yes|-|-|

## Related Types

- [PinnedItemsButtonProps](../types/PinnedItemsButtonProps.md)
- [PinboardCurrentItem](../types/PinboardCurrentItem.md)

