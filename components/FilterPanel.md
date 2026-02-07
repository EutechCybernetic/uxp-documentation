# FilterPanel

Displays a filter button which, when clicked, opens a popup panel.
Suitable for hiding filters for widgets or searches




## Installation

```tsx
import { FilterPanel } from 'uxp/components';
```

## Signature

```tsx
const FilterPanel: React.FunctionComponent<IFilterPanelProps>
```

## Examples

```tsx
<FilterPanel
                               enableClear={inputValue?.length > 0 || selected != null}
                               onClear={() => { setInputValue(""); setSelected(null) }} >
                               <FormField className="no-padding mb-only">
                                   <Label>Sort By</Label>
                                   <Select
                                       selected={selected}
                                       options={[
                                           { label: "Name", value: "op-1" },
                                           { label: "Date", value: "op-2" },
                                       ]}
                                       onChange={(value) => { setSelected(value) }}
                                       placeholder=" -- select --"
                                       isValid={selected ? selected?.length > 0 : null}
                                   />
                               </FormField>
</FilterPanel>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|onOpen|[ICallback](../types/ICallback.md)|No|-|-|
|onClose|[ICallback](../types/ICallback.md)|No|-|-|
|onClear|[ICallback](../types/ICallback.md)|No|-|-|
|fillContainer|React.RefObject<HTMLElement>|No|-|-|
|className|string|No|-|-|
|enableClear|boolean|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IFilterPanelProps](../types/IFilterPanelProps.md)
- [ICallback](../types/ICallback.md)

