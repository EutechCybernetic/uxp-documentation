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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|size|number|No|-|-|
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

