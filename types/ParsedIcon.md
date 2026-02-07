# ParsedIcon

Result of parsing an icon prop
Contains the detected type and formatted icon ready for rendering


## Definition

```tsx
export interface ParsedIcon {
    /**
     * Detected icon type
     */
    type: IconType;

    /**
     * Icon formatted for the appropriate wrapper
     * - FontAwesome: IconProp array ['fas', 'save']
     * - Phosphor: PHIconProp array ['phb', 'house']
     * - Image: URL string
     * - Text: text/emoji string
     * - React: ReactElement
     */
    formatted: IconProp | PHIconProp | string | ReactElement;

    /**
     * Original icon prop as passed by the user
     */
    original: any;
}
```

## Usage

```tsx
import { ParsedIcon } from 'uxp/components';
```

## Related Types

- [IconType](../types/IconType.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)

