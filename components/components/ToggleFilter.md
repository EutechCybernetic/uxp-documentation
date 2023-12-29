# ToggleFilter



This component presents a group of options from which one can be selected.
Suitable to select a single item from a list where the list is very small. Most often used for filters.



## Installation



```tsx
import {ToggleFilter} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|options|IToggleOption[]|The list of possible options to choose from |
|value|string|The current value (selected item) |
|onChange|(newValue: string) => void|Called whenever an option is selected |
|className|string|Any additional css classes to include |
### options



---



The list of possible options to choose from


|type|
|-|
|IToggleOption[]|
### value



---



The current value (selected item)


|type|
|-|
|string|
### onChange



---



Called whenever an option is selected


|type|
|-|
|(newValue: string) => void|
### className



---



Any additional css classes to include


|type|
|-|
|string|
