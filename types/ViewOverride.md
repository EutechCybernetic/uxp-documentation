# ViewOverride

## Definition

```tsx
export interface ViewOverride {
    /** Unique view identifier (lowercase) */
    viewId: string;
    /** PageId to render instead of default (lowercase) */
    pageId: string;
    /** Saved configuration props for the component rendered in this slot */
    configuredProps?: Record<string, any>;
}
```

## Usage

```tsx
import { ViewOverride } from 'uxp/components';
```

