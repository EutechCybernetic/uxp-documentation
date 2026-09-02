# IFetchMyMediaOptions


Options for a single page of the caller's media library.


## Definition

```tsx
export interface IFetchMyMediaOptions {
    /** page size */
    max?: number
    /** offset of the first row */
    last?: number
    /** name search text */
    q?: string
    /** restrict to these media types */
    types?: MediaType[]
}
```

## Usage

```tsx
import { IFetchMyMediaOptions } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

