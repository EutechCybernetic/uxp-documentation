# PageContextValue


What the user is looking at: the page, and what the page added.


## Definition

```tsx
export interface PageContextValue {
    page: PageContextPage | null
    /** In the order they were added */
    entries: PageContextEntry[]
}
```

## Usage

```tsx
import { PageContextValue } from 'uxp/components';
```

## Related Types

- [PageContextPage](../types/PageContextPage.md)
- [PageContextEntry](../types/PageContextEntry.md)

