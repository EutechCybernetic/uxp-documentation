# LinkWidgetContainer

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=other-linkwidgetcontainer--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="LinkWidgetContainer live demo"
></iframe>


## Installation

```tsx
import { LinkWidgetContainer } from 'uxp/components';
```

## Signature

```tsx
const LinkWidgetContainer: React.FunctionComponent<ILinkWidgetContainerProps>
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

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|show|boolean|Yes|-|-|
|onOpen|any|No|-|-|
|onClose|any|No|-|-|
|title|any|No|-|-|
|className|string|No|-|-|
|toolbarContent|any|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [ILinkWidgetContainerProps](../types/ILinkWidgetContainerProps.md)

