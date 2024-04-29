# Select




A select control to select one item from a list of multiple items


 

## Installation



```tsx
import {Select} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|options|IOption[] \| any[]|List of items to select from. Each option has a label which is displayed and a value which is what we actually select. also you can pass any object as options, then specify the labelField, valueField props |
|labelField|string|Name of the field you want to display as label If not given default(label) will be used |
|valueField|string|Name of the field you want to return as value If not given default(value) will be used |
|iconField|string|Name if the field to use as icon if a value is passed icon will be displayed. |
|selected|string|The currently selected value |
|onChange|(value: string, option?: IOption \| any) => void|Gets called whenever the selection changes. The value parameter has the newly selected value option parameter has the complete option/ object that you passed |
|placeholder|string|Text to show when no value is selected |
|className|string|Any extra css classes to add to the component |
|isValid|boolean|Set this to false to indicate the field doesn't have a valid value |
|showEndOfContent|boolean||
|renderOption|(item: any, key: number) => JSX.Element|A function that will be responsible for rendering each individual option of the list. |
|addNewValues|{ enable: boolean, title: string, loadingTitle: string, onAddNewValue?: (value: string) => Promise<any> }||
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
### iconField



---



Name if the field to use as icon
if a value is passed icon will be displayed.


|type|
|-|
|string|
### selected



---



The  currently selected value


|type|
|-|
|string|
### onChange



---



Gets called whenever the selection changes.
The value parameter has the newly selected value
option parameter has the complete option/ object that you passed


|type|
|-|
|(value: string, option?: IOption \| any) => void|
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
### renderOption



---



A function that will be responsible for rendering each individual option of the list.



|type|
|-|
|(item: any, key: number) => JSX.Element|


```tsx
renderItem={(option,key)=><div>{option.label}</div>}
```



```tsx
renderItem={(option,key)=><ItemCard data={item} titleField='label' />}
```

### addNewValues



---





|type|
|-|
|{ enable: boolean, title: string, loadingTitle: string, onAddNewValue?: (value: string) => Promise<any> }|
