# PortalContainer

> **Advanced.** Available for building custom components. Most apps do not need it.




This component is used to create a react portal.




## Installation

```tsx
import { PortalContainer } from 'uxp/components';
```

## Signature

```tsx
const PortalContainer: React.FunctionComponent<IPortalContainerProps>
```

## Examples

```tsx
<PortalContainer >
     {your content}
 </PortalContainer>
```

#### <PortalContainer
     hasBackdrop
     onClickBackdrop={() => {setShow(false)}}
     backdropStyles={{backgroundColor: "white"}}
 >
     {your content}
 </PortalContainer>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|hasBackdrop|boolean|No|-|true|
|onClickBackdrop|(e?: React.MouseEvent<HTMLDivElement>) => void|No|-|-|
|backdropStyles|any|No|-|-|
|disableScroll|boolean|No|-|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|Box <div style={{ padding: 24, background: 'var(--portalBGColor)' }}>Rendered i…|

## Related Types

- [IPortalContainerProps](../types/IPortalContainerProps.md)

