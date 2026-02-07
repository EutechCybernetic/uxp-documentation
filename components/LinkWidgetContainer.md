# LinkWidgetContainer

This is a extended version of modal. this covers the full UI.
main purpose is to create a container for sidebar link widgets


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

