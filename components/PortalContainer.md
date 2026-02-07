# PortalContainer




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

```tsx
<PortalContainer
     hasBackdrop
     onClickBackdrop={() => {setShow(false)}}
     backdropStyles={{backgroundColor: "white"}}
 >
     {your content}
 </PortalContainer>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|hasBackdrop|boolean|No|-|-|
|onClickBackdrop|(e?: React.MouseEvent<HTMLDivElement>) => void|No|-|-|
|backdropStyles|any|No|-|-|
|disableScroll|boolean|No|-|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IPortalContainerProps](../types/IPortalContainerProps.md)

