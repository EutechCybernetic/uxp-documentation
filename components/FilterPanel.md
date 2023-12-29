# FilterPanel



Displays a filter button which, when clicked, opens a popup panel.
Suitable for hiding filters for widgets or searches




## Installation



```tsx
import {FilterPanel} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|onOpen|[ICallback](types/ICallback)|Called whenever the panel is opened |
|onClose|[ICallback](types/ICallback)|Called whenever the panel gets dismissed |
|onClear|[ICallback](types/ICallback)|Called whenever the clear button on the panel is pressed. This button is available only when `enableClear` is set to `true1` |
|fillContainer|React.RefObject<HTMLElement>||
|className|string|Any extra css classes to add to the filter panel |
|enableClear|boolean|Enabled the clear button on the panel |
### onOpen



---



Called whenever the panel is opened


|type|
|-|
|[ICallback](types/ICallback)|
### onClose



---



Called whenever the panel gets dismissed


|type|
|-|
|[ICallback](types/ICallback)|
### onClear



---



Called whenever the clear button on the panel is pressed. This button is available only when `enableClear` is set to `true1`


|type|
|-|
|[ICallback](types/ICallback)|
### fillContainer



---





|type|
|-|
|React.RefObject<HTMLElement>|
### className



---



Any extra css classes to add to the filter panel


|type|
|-|
|string|
### enableClear



---



Enabled the clear button on the panel


|type|
|-|
|boolean|
