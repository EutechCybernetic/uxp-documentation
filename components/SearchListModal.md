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

## Live preview

[Open SearchListModal in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-searchlistmodal--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|true|
|onClose|() => void|Yes|-|Log onClose={() => console.log('closed')}|
|onSelect|(item: any) => void|Yes|-|Log onSelect={(item) => console.log('selected', item)}|

## Related Types

- [SearchListModalProps](../types/SearchListModalProps.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)

