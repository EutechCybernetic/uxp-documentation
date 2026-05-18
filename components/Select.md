# Select

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-select--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Select live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|options|IOption[] \| any[] \| IDataFunction|Yes|-|-|
|labelField|string|No|-|-|
|valueField|string|No|-|-|
|iconField|string|No|-|-|
|selected|string|Yes|-|-|
|selectedLabel|string \| ((selected: string) => Promise<any>)|No|-|-|
|onChange|(value: string, option?: IOption \| any) => void|Yes|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|isValid|boolean|No|-|-|
|showEndOfContent|boolean|No|-|-|
|renderOption|(item: any, key: number, isHighlighted?: boolean, isSelected?: boolean) => JSX.Element|No|-|*|
|addNewValues|{ enable: boolean, title: string, loadingTitle: string, onAddNewValue?: (value: string) => Promise<any> }|No|-|-|
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

## Related Types

- [ISelectProps](../types/ISelectProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IOption](../types/IOption.md)
- [IDataFunction](../types/IDataFunction.md)
- [DropdownPosition](../types/DropdownPosition.md)

