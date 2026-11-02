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
    /** 'root' (my top level) or a folder key (mine or shared with me) */
    folder?: string
    /** a tag key (mine or shared with me) */
    tag?: string
    /** everything shared with me */
    shared?: boolean
}
```

## Usage

```tsx
import { IFetchMyMediaOptions } from 'uxp/components';
```

## Related Types

- [MediaType](../types/MediaType.md)

