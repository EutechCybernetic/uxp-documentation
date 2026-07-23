# PredefinedQuery

A predefined Lucy query row (list view — no pipeline until loaded).


## Definition

```tsx
export interface PredefinedQuery {
    Key: string;
    ID: string;
    Name: string;
    Description: string | null;
    ObjectTypes?: string | null;
}
```

## Usage

```tsx
import { PredefinedQuery } from 'uxp/components';
```

