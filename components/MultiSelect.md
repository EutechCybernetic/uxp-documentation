# MultiSelect




A select control to select multiple items from a list of items


 

## Installation



```tsx
import {MultiSelect} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|options|IOption[] \| any[]|List of items to select from. Each option has a label which is displayed and a value which is what we actually select. also you can pass any object as options, then specify the labelField, valueField props |
|labelField|string|Name of the field you want to display as label If not given default(label) will be used |
|valueField|string|Name of the field you want to return as value If not given default(value) will be used |
|selected|string[]|The currently selected value ['option1', 'option2'] |
|onChange|(values: string[], options?: IOption[] \| any[]) => void|Gets called whenever the selection changes. The value parameter has the newly selected value option parameter has the complete option/ object that you passed |
|placeholder|string|Text to show when no value is selected |
|className|string|Any extra css classes to add to the component |
|isValid|boolean|Set this to false to indicate the field doesn't have a valid value |
|showEndOfContent|boolean||
### options



---



List of items to select from.
Each option has a label which is displayed and a value which is what we actually select.
also you can pass any object as options, then specify the labelField, valueField props


|type|
|-|
|IOption[] \| any[]|
### labelField



---



Name of the field you want to display as label
If not given default(label) will be used


|type|
|-|
|string|
### valueField



---



Name of the field you want to return  as value
If not given default(value) will be used


|type|
|-|
|string|
### selected



---



The  currently selected value

['option1', 'option2']


|type|
|-|
|string[]|
### onChange



---



Gets called whenever the selection changes.
The value parameter has the newly selected value
option parameter has the complete option/ object that you passed


|type|
|-|
|(values: string[], options?: IOption[] \| any[]) => void|
### placeholder



---



Text to show when no value is selected


|type|
|-|
|string|
### className



---



Any extra css classes to add to the component


|type|
|-|
|string|
### isValid



---



Set this to false to indicate the field doesn't have a valid value


|type|
|-|
|boolean|
### showEndOfContent



---





|type|
|-|
|boolean|
