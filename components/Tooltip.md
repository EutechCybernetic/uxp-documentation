# Tooltip



This component wraps another component and shows a tooltip for the component it is wrapping, whenever the user moves the mouse over it.



## Installation



```tsx
import {Tooltip} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|content|string \| IContentFunction|The content to show inside the tooltip This can be either a string or a JSX element |
|position|[ITooltipPosition](types/ITooltipPosition)|Where the tooltip should be placed relative to the element it is being displayed for <Tooltip position="left" content="There are many like it but this one's mine" /> |
### content



---



The content to show inside the tooltip
This can be either a string or a JSX element


|type|
|-|
|string \| IContentFunction|


```tsx
<Tooltip content="This is a tooltip" />
```



```tsx
<Tooltip content={() => <div>This is a tooltip</div>} />
```

### position



---



Where the tooltip should be placed relative to the element it is being displayed for
<Tooltip position="left" content="There are many like it but this one's mine" />


|type|
|-|
|[ITooltipPosition](types/ITooltipPosition)|
