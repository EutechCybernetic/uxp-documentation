# PortalContainer

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=popups-portalcontainer--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="PortalContainer live demo"
></iframe>





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
|hasBackdrop|boolean|No|-|-|
|onClickBackdrop|(e?: React.MouseEvent<HTMLDivElement>) => void|No|-|-|
|backdropStyles|any|No|-|-|
|disableScroll|boolean|No|-|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IPortalContainerProps](../types/IPortalContainerProps.md)

