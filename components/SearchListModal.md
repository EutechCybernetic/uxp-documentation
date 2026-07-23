# SearchListModal


A large filterable list-picker modal wrapping the existing ObjectSearchComponent.
Single-select: clicking a row returns it and closes the modal (v4 popupsearch parity).


## Installation

```tsx
import { SearchListModal } from 'uxp/components';
```

## Signature

```tsx
const SearchListModal: React.FunctionComponent<SearchListModalProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|onSelect|(item: any) => void|Yes|-|-|

## Related Types

- [SearchListModalProps](../types/SearchListModalProps.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)

