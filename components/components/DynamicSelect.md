# DynamicSelect






This component is used to create a select box with pagination (infinite scrolling) & search/filter options.
Support keyboard interactions
 - Arrow Keys (up & down) - navigate through options list
 - Enter Key - Select current highlighted option
 - Escape Key - Exit select mode & discard changes


## Installation



```tsx
import {DynamicSelect} from 'uxp/components';
```

## Examples



```tsx
<DynamicSelect
     selected={selected}
     options={(max: number, pageToken: string, args?: any) => getOptions(max, pageToken, args)}
     onChange={(value) => { setSelected(value)}}
     placeholder=" -- select --"
     labelField="label"
     timeout={500}
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|options|[IDynamicSelectDataFunction](types/IDynamicSelectDataFunction)|List of options to render. This a function that will generate the array of objects. pagination will be supported. The function expects 2 parameters - max and last and returns a promise that will resolve to the list of objects. max specifies the maximum number of items to be returned. |
|selected|string|selected option label |
|onChange|(value: any) => void|Callback that gets executed whenever a option is selected/changed |
|placeholder|string|placeholder text |
|className|string|Any extra css classes to add to the button |
|isValid|boolean|set to valid state if true |
|pageSize|number|page size for pagination |
|renderOption|(item: any, key: number) => JSX.Element|A function that will be responsible for rendering each individual option of the list. It is common to return `ItemCard` component from here. |
|labelField|string|name of the field to display |
|timeout|number|number of milliseconds to delay send the request on change query default is 500 |
|type|"search-box" \| "select-box"||
|showEndOfContent|boolean|show hide end of content message |
### options



---



List of options to render.
This a function that will generate the array of objects.
pagination will be supported.
The function expects 2 parameters - max and last and returns a promise that will resolve to the list of objects. max specifies the maximum number of items to be returned.


|type|
|-|
|[IDynamicSelectDataFunction](types/IDynamicSelectDataFunction)|
### selected



---



selected option label


|type|
|-|
|string|
### onChange



---



Callback that gets executed whenever a option is selected/changed


|type|
|-|
|(value: any) => void|
### placeholder



---



placeholder text


|type|
|-|
|string|
### className



---



Any extra css classes to add to the button


|type|
|-|
|string|
### isValid



---



set to valid state if true


|type|
|-|
|boolean|
### pageSize



---



page size for pagination


|type|
|-|
|number|
### renderOption



---



A function that will be responsible for rendering each individual option of the list.
It is common to return  `ItemCard` component from here.



|type|
|-|
|(item: any, key: number) => JSX.Element|


```tsx
renderItem={(option,key)=><div>{option.label}</div>}
```



```tsx
renderItem={(option,key)=><ItemCard data={item} titleField='label' />}
```

### labelField



---



name of the field to display


|type|
|-|
|string|
### timeout



---



number of milliseconds to delay send the request on change query
default is 500



|type|
|-|
|number|
### type



---





|type|
|-|
|"search-box" \| "select-box"|
### showEndOfContent



---



show hide end of content message


|type|
|-|
|boolean|
