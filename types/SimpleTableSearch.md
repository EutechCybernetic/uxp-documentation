# SimpleTableSearch

## Definition

```tsx
export interface SimpleTableSearch {
    /** Fields to search in (if not provided, searches all fields) */
    fields?: string[];
    /** Callback when search query changes (for server-side search) */
    onChangeQuery?: (query: string) => void;
}
```

## Usage

```tsx
import { SimpleTableSearch } from 'uxp/components';
```

