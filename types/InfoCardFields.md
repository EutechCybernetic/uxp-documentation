# InfoCardFields


Field mappings for ItemCard display


## Definition

```tsx
export interface InfoCardFields {
    /**
     * Field name for image URL or icon pattern
     */
    image?: string;

    /**
     * Field name for title text
     */
    title?: string;

    /**
     * Field name for subtitle text
     */
    subtitle?: string;

    /**
     * Field name for name (used for initials if no image)
     */
    name?: string;
}
```

## Usage

```tsx
import { InfoCardFields } from 'uxp/components';
```

