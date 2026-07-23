# InfoCardExtraField


An extra field rendered below the subtitle in the InfoCard body.


## Definition

```tsx
export interface InfoCardExtraField {
    /** Content to display — string or any ReactNode */
    value: string | React.ReactNode;
    /** Visual style. Defaults to 'secondary'. */
    style?: InfoCardFieldStyle;
    /** FontAwesome icon key e.g. 'fas tag' */
    icon?: string;
    /** Click handler — also applies the clickable cursor */
    onClick?: () => void;
}
```

## Usage

```tsx
import { InfoCardExtraField } from 'uxp/components';
```

## Related Types

- [InfoCardFieldStyle](../types/InfoCardFieldStyle.md)

