# QRCodeComponentProps

Props for the QRCodeComponent.


## Definition

```tsx
export interface QRCodeComponentProps {
    /** The value (text or URL) to encode in the QR code. */
    value: string;

    /** The size (width/height) of the QR code in pixels. Default is 128. */
    size?: number;

    /** Background color of the QR code. Defaults to theme or white. */
    bgColor?: string;

    /** Foreground color of the QR code. Defaults to theme or black. */
    fgColor?: string;

    /** Optional CSS class for the container. */
    className?: string;

    /** Optional inline styles for the container. */
    style?: React.CSSProperties;

    /** Additional styles (CSS string) to apply when printing. */
    printStyles?: string;

    /** If true, shows shadow around the QR code. Default is true. */
    shadow?: boolean;

    /** trigger print on click the qr code */
    printOnClick?: boolean
}
```

## Usage

```tsx
import { QRCodeComponentProps } from 'uxp/components';
```

