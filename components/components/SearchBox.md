# SearchBox






This component is used to render a search box.



## Installation



```tsx
import {SearchBox} from 'uxp/components';
```

## Examples



```tsx
<SearchBox
     value={inputValue}
     onChange={(newValue) => { setInputValue(newValue) }}
 />
```



```tsx
<SearchBox
     value={inputValue}
     onChange={(newValue) => { setInputValue(newValue) }}
     collapsed
     position="right"
 />
```

## Properties

|Name|Type|Description|
|-|-|-|
|value|string|Default value |
|onChange|(newValue: string) => void|This function is called whenever the text changes. The new text value is passed as a parameter |
|className|string|Any additional class names to be included for the input field |
|collapsed|boolean|show only a icon button when true. When click on the button it will show the actual search box |
|position|[IPosition](types/IPosition)|position of search box |
|placeholder|string|placeholder value |
|autoFocus|boolean|input will be auto focused if true |
### value



---



Default value


|type|
|-|
|string|
### onChange



---



This function is called whenever the text changes. The new text value is passed as a parameter


|type|
|-|
|(newValue: string) => void|
### className



---



Any additional class names to be included for the input field


|type|
|-|
|string|
### collapsed



---



show only a icon button when true. When click on the button it will show the actual search box


|type|
|-|
|boolean|
### position



---



position of search box


|type|
|-|
|[IPosition](types/IPosition)|
### placeholder



---



placeholder value


|type|
|-|
|string|
### autoFocus



---



input will be auto focused if true


|type|
|-|
|boolean|
