# SearchBox

A searchbox component



## Installation

```tsx
import { SearchBox } from 'uxp/components';
```

## Signature

```tsx
const SearchBox: React.ForwardRefExoticComponent<React.RefAttributes<ISearchBoxInstanceProps> & ISearchBoxProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(newValue: string) => void|Yes|-|-|
|className|string|No|-|-|
|collapsed|boolean|No|-|-|
|position|[IPosition](../types/IPosition.md)|No|-|-|
|placeholder|string|No|-|-|
|autoFocus|boolean|No|-|-|
|spacingMode|[SpacingMode](../types/SpacingMode.md)|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focusInput|() => void|-|
|getInputElement|() => React.MutableRefObject<HTMLInputElement>|-|

## Related Types

- [ISearchBoxProps](../types/ISearchBoxProps.md)
- [IPosition](../types/IPosition.md)
- [SpacingMode](../types/SpacingMode.md)
- [ISearchBoxInstanceProps](../types/ISearchBoxInstanceProps.md)

