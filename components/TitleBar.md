# TitleBar



Use this to show a title area on widgets. You can set a title on the left side
and any arbitrary content on the right side - typically you would use a {@component FilterPanel} there.
The content that appears on the right side go as children of this component.




## Installation



```tsx
import {TitleBar} from 'uxp/components';
```

## Examples



```tsx
<TitleBar title='My Test Widget'>
     <div>Active</div>
</TitleBar>
```

## Properties

|Name|Type|Description|
|-|-|-|
|title|string|The title to show for the widget |
|icon|string|The url for an icon to be shown next to the title on the top left corner. |
|className|string||
### title



---



The title to show for the widget


|type|
|-|
|string|
### icon



---



The url for an icon to be shown next to the title on the top left corner.


|type|
|-|
|string|
### className



---





|type|
|-|
|string|
