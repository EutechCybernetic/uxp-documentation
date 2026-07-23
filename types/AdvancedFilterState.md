# AdvancedFilterState

## Definition

```tsx
export interface AdvancedFilterState {
    question?: string;
    /** Omitted for reference-only predefined views (pipeline fetched live by query id). */
    pipeline?: QBQuery;
    pipelineHash?: string;
    originalPipeline?: QBQuery;
    originalPipelineHash?: string;
    isRefined?: boolean;
    /** Set when the pipeline originated from a predefined Lucy query. */
    isPredefined?: boolean;
    predefinedQueryId?: string;
    predefinedQueryName?: string;
}
```

## Usage

```tsx
import { AdvancedFilterState } from 'uxp/components';
```

