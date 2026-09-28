# QRCodeComponent


A reusable QR code component with optional print support and UXP theming.
Wraps `react-qr-code` and supports context-based styling.



## Installation

```tsx
import { QRCodeComponent } from 'uxp/components';
```

## Signature

```tsx
const QRCodeComponent: React.ForwardRefExoticComponent<React.RefAttributes<QRCodeComponentHandles> & QRCodeComponentProps>
```

## Live preview

[Open QRCodeComponent in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-qrcodecomponent--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"https://www.iviva.com"|
|size|number|No|-|160|
|bgColor|string|No|-|-|
|fgColor|string|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|
|printStyles|string|No|-|-|
|shadow|boolean|No|-|-|
|printOnClick|boolean|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|print|() => void|Opens print dialog with a larger QR code. |

## Related Types

- [QRCodeComponentProps](../types/QRCodeComponentProps.md)
- [QRCodeComponentHandles](../types/QRCodeComponentHandles.md)

