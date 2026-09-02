# RichCommandArg


Argument for the 'link' and 'image' commands.


## Definition

```tsx
export interface RichCommandArg {
    /** Target URL (link href / image src) */
    url?: string;
    /** Link text — falls back to the current selection, then the URL */
    text?: string;
    /** Image alt text */
    alt?: string;
}
```

## Usage

```tsx
import { RichCommandArg } from 'uxp/components';
```

