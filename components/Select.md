# Select


A select control to select one item from a list of multiple items


 

## Installation

```tsx
import { Select } from 'uxp/components';
```

## Signature

```tsx
const Select: React.MemoExoticComponent<React.FunctionComponent<ISelectProps>>
```

## Examples

```tsx
// options
 let [selectedOption, setSelectedOption] = React.useState<string>(null)
 let options = [
     {label: "Sri Lanka", value: "SL"},
     {label: "India", value: "IN"},
     {label: "United State", value: "US"},
 ]

 <Select
     options={options}
     selected={selectedOption}
     onChange={(newValue, option) => {
         setSelectedOption(value)
     }}
 />
```

```tsx
// options
 let [selectedOption, setSelectedOption] = React.useState<string>(null)
 let options = [
     {name: "Sri Lanka", code: "SL"},
     {name: "India", code: "IN"},
     {name: "United State", code: "US"},
 ]

 <Select
     options={options}
     labelField="name"
     valueField="code"
     selected={selectedOption}
     onChange={(newValue, option) => {
         setSelectedOption(value)
     }}
 />
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-selection-select--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Select live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|options|IOption[] \| any[] \| IDataFunction|Yes|-|[ { label: 'Chiller 01', value: 'CH-01' }, { label: 'Chiller 02', value: 'CH-02…|
|labelField|string|No|-|-|
|valueField|string|No|-|-|
|iconField|string|No|-|-|
|selected|string|Yes|-|"CH-01"|
|selectedLabel|string \| ((selected: string) => Promise<any>)|No|-|-|
|onChange|(value: string, option?: IOption \| any) => void|Yes|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|isValid|boolean|No|-|-|
|showEndOfContent|boolean|No|-|-|
|renderOption|(item: any, key: number, isHighlighted?: boolean, isSelected?: boolean) => JSX.Element|No|-|renderOption={(option,key)=><div>{option.label}</div>}|
|addNewValues|[IAddNewValues](../types/IAddNewValues.md)|No|-|-|
|dropdownClassname|string|No|-|-|
|onClear|() => void|No|-|-|
|renderCustomDropdownContent|(closeDropdown: () => void) => React.ReactNode|No|-|-|
|prefix|React.ReactNode|No|-|-|
|renderPlaceholder|{ /** * render input as a pill * work with default select dropdown */ renderAsPill?: { minWidth?: number, maxWidth?: number }, /** * for custom renders */ renderCustomPill?: (onClear: () => void) => React.ReactNode }|No|-|-|
|dropdownMinWidth|number \| string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|dropdownMinHeight|number|No|-|-|
|pageSize|number|No|-|-|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|searchModal|[SearchModalConfig](../types/SearchModalConfig.md)|No|-|-|

## Related Types

- [ISelectProps](../types/ISelectProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IOption](../types/IOption.md)
- [IDataFunction](../types/IDataFunction.md)
- [IAddNewValues](../types/IAddNewValues.md)
- [DropdownPosition](../types/DropdownPosition.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)

