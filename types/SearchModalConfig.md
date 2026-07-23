# SearchModalConfig


Config for the search-list modal, i.e. the ObjectSearchComponent props
(data, columns, total, idField, pageSize, search, filters, ...) plus an optional modal title.


## Definition

```tsx
export type SearchModalConfig = ForwardedObjectSearchProps & {
    /** Modal title. Falls back to the OSC `title`. */
    modalTitle?: string;
};
```

## Usage

```tsx
import { SearchModalConfig } from 'uxp/components';
```

