# Popover




Show a popup bubble when clicking on an element.
Wrap the element you want to target in the popup bubble.



## Installation



```tsx
import {Popover} from 'uxp/components';
```

## Examples



```tsx
<Popover title='Details' content={'Name:' + props.name}>
     <span>Click to see name</span>
</Popover>
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string \| IContentFunction|title of the popup bubble This can be either a string or a JSX element |
|content|string \| IContentFunction|the content to show within the bubble This can be either a string or a JSX element * |
|position|[IPopoverPosition](types/IPopoverPosition)|Where the bubble should be positioned relative to the element |
### title



---



title of the popup bubble
 This can be either a string or a JSX element


|type|
|-|
|string \| IContentFunction|


```tsx
title="Popover Title"
```

*
```



```tsx
title={() => <div>Popover Title</div>
```

### content



---



the content to show within the bubble
 This can be either a string or a JSX element

* 

|type|
|-|
|string \| IContentFunction|


```tsx
content="Popover Content"
```

*
```



```tsx
content={() => <div>Popover content</div>
```

### position



---



Where the bubble should be positioned relative to the element


|type|
|-|
|[IPopoverPosition](types/IPopoverPosition)|
