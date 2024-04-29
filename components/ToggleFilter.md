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
|backgroundColor|string|background color of the fill/tab default is white |
|textColor|string|text color of the tab/fill default is #424242 |
|selectedBackgroundColor|string|background color for the selected tab default is white with box shadow |
|selectedTextColor|string|text color for the selected tab/fill default is #424242 |
|disableShadow|boolean|this will disable the box shadow from the selected tab/fill |
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
### backgroundColor



---



background color of the fill/tab
default is white


|type|
|-|
|string|
### textColor



---



text color of the tab/fill
default is #424242


|type|
|-|
|string|
### selectedBackgroundColor



---



background color for the selected tab
default is white with box shadow


|type|
|-|
|string|
### selectedTextColor



---



text color for the selected tab/fill
default is #424242


|type|
|-|
|string|
### disableShadow



---



this will disable the box shadow from the selected tab/fill


|type|
|-|
|boolean|
