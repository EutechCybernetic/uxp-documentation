# UseExecuteResult

Return value from useExecuteRequest hook.


## Definition

```tsx
export interface UseExecuteResult<T = any> {
    /** Loading state - true while request is in progress */
    loading: boolean;
    /** Response data (null if not yet loaded or on error) */
    data: T | null;
    /** Error object if request failed */
    error: any;
    /** Error message string if request failed */
    errorMessage?: string;
    /**
     * Refresh data by re-executing the request.
     * Updates loading/data/error state automatically.
     * @param executeImmediately - Skip debounce if true
     */
    refresh: (executeImmediately?: boolean) => void;
    /**
     * Execute request manually with optional parameters.
     * @param params - Override/merge request parameters
     * @param updateLocalState - Update loading/data/error state if true
     * @returns Promise with execution result
     */
    execute: (params?: any, updateLocalState?: boolean) => Promise<ExecutionResult<T>>;
    /**
     * Reset hook state to initial values.
     * Clears loading, data, error, and cancels pending timers.
     */
    reset: () => void;
}
```

## Usage

```tsx
import { UseExecuteResult } from 'uxp/components';
```

## Related Types

- [ExecutionResult](../types/ExecutionResult.md)

