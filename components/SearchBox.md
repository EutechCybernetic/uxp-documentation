# SearchBox

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-searchbox--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="SearchBox live demo"
></iframe>


A searchbox component



## Installation

```tsx
import { SearchBox } from 'uxp/components';
```

## Signature

```tsx
const SearchBox: React.ForwardRefExoticComponent<React.RefAttributes<SearchBoxHandlers> & SearchBoxProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(newValue: string) => void|Yes|-|-|
|className|string|No|-|-|
|collapsed|boolean|No|-|-|
|position|any|No|-|-|
|placeholder|string|No|-|-|
|autoFocus|boolean|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focusInput|() => void|-|
|getInputElement|() => React.MutableRefObject<HTMLInputElement>|-|

## Related Types

- [SearchBoxProps](../types/SearchBoxProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [SearchBoxHandlers](../types/SearchBoxHandlers.md)

