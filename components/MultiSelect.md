# MultiSelect

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-multiselect--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="MultiSelect live demo"
></iframe>



A select control to select multiple items from a list of items


 

## Installation

```tsx
import { MultiSelect } from 'uxp/components';
```

## Signature

```tsx
const MultiSelect: React.MemoExoticComponent<React.FunctionComponent<IMultiSelectProps>>
```

## Examples

```tsx
// options
 let [selectedOptions, setSelectedOptions] = React.useState<string[]>([])
 let options = [
     {label: "Sri Lanka", value: "SL"},
     {label: "India", value: "IN"},
     {label: "United State", value: "US"},
 ]

 <MultiSelect
     options={options}
     selected={selectedOptions}
     onChange={(newValues, options) => {
         setSelectedOptions(values)
     }}
 />
```

```tsx
// options
 let [selectedOptions, setSelectedOptions] = React.useState<string[]>([])
 let options = [
     {name: "Sri Lanka", code: "SL"},
     {name: "India", code: "IN"},
     {name: "United State", code: "US"},
 ]

 <MultiSelect
     options={options}
     labelField="name"
     valueField="code"
     selected={selectedOptions}
     onChange={(newValues, options) => {
         setSelectedOptions(values)
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
|selected|string[]|Yes|-|-|
|selectedLabels|string[] \| ((selected: string[]) => Promise<any[]>)|No|-|-|
|onChange|(values: string[], options?: IOption[] \| any[]) => void|Yes|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|isValid|boolean|No|-|-|
|showEndOfContent|boolean|No|-|-|
|renderOption|(item: any, key: number, isHighlighted?: boolean, isSelected?: boolean) => JSX.Element|No|-|*|
|wrapSelectedItemsToOneLine|boolean|No|-|-|
|selectAllOnLoad|boolean|No|-|-|
|hideClearButton|boolean|No|-|-|
|hideDoneButton|boolean|No|-|-|
|dropdownClassname|string|No|-|-|
|dropdownMinWidth|number \| string|No|-|-|
|dropdownMaxWidth|number \| string|No|-|-|
|dropdownMinHeight|number|No|-|-|
|pageSize|number|No|-|-|
|renderCustomDropdownContent|(closeDropdown: () => void) => React.ReactNode|No|-|-|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|renderPlaceholder|{ /** * render input as a pill * work with default select dropdown */ renderAsPill?: { minWidth?: number, maxWidth?: number }, /** * for custom renders */ renderCustomPill?: (onRemove: (e: React.MouseEvent<HTMLElement>, opt: any) => void) => React.ReactNode }|No|-|-|

## Related Types

- [IMultiSelectProps](../types/IMultiSelectProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IOption](../types/IOption.md)
- [IDataFunction](../types/IDataFunction.md)
- [DropdownPosition](../types/DropdownPosition.md)

