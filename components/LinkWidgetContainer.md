# LinkWidgetContainer



This is a extended version of modal. this covers the full UI.
main purpose is to create a container for sidebar link widgets


## Installation



```tsx
import {LinkWidgetContainer} from 'uxp/components';
```

## Examples



```tsx
<button className="btn showcase" onClick={() => setShowLinkWidget(true)}>Click to Show Link Widget Container</button>

 <LinkWidgetContainer
     show={showLinkWidget}
     onClose={() => setShowLinkWidget(false)}
     title="Link Widget Container"
 >
     content
</LinkWidgetContainer>
```

## Properties

|Name|Type|Description|
|-|-|-|
|show|boolean| Set this to true to make the container visible |
|onOpen|any|Called whenever the container is opened |
|onClose|any|Called when the container gets closed |
|title|any|The title set in the title bar of the container |
|className|string|Any extra css classes to apply |
|toolbarContent|any|Any custom content to include in the container toolbar. |
### show



---



 Set this to true to make the container visible


|type|
|-|
|boolean|
### onOpen



---



Called whenever the container is opened


|type|
|-|
|any|
### onClose



---



Called when the container gets closed


|type|
|-|
|any|
### title



---



The title set in the title bar of the container


|type|
|-|
|any|
### className



---



Any extra css classes to apply


|type|
|-|
|string|
### toolbarContent



---



Any custom content to include in the container toolbar.


|type|
|-|
|any|
