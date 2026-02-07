# UseExecuteOptions

Options for controlling hook behavior.
These options override config-level settings when specified.


## Definition

```tsx
export interface UseExecuteOptions<T = any> {
    /**
     * Debounce delay in milliseconds before executing.
     * Useful for search inputs or rapid state changes.
     * @default 0
     */
    debounce?: number;

    /**
     * Execute automatically on mount and when dependencies change.
     * Set to false for manual execution only.
     * @default true
     */
    autoExecute?: boolean;

    /**
     * Dependencies array to trigger re-execution when changed.
     * Similar to useEffect dependencies.
     * @default []
     */
    dependencies?: any[];

    /**
     * Polling interval in milliseconds.
     * Automatically re-executes after each interval.
     * Requires autoExecute to be true.
     */
    polling?: number;

    /**
     * Default value to use when data is null or on error.
     * Also used as initial state value.
     */
    defaultValue?: T;

    /**
     * Preview mode configuration.
     * When enabled, returns sample data instead of executing.
     */
    preview?: {
        /** Enable preview mode */
        isPreview?: boolean;
        /** Sample data to return in preview mode */
        sampleData?: T;
    };

    /**
     * Extract data from response before processing.
     * **Overrides config-level extractData when specified.**
     *
     * @example
     * ```typescript
     * // Override service-level extraction
     * useExecuteRequest(
     *   SomeService.getData(),
     *   { extractData: 'customPath' }
     * )
     * ```
     */
    extractData?: string | (string | number)[] | ((data: any) => any);

    /**
     * Transform/format data after extraction.
     * **Overrides config-level transformData when specified.**
     *
     * @example
     * ```typescript
     * // Override service-level transformation
     * useExecuteRequest(
     *   SomeService.getData(),
     *   { transformData: (data) => customFormat(data) }
     * )
     * ```
     */
    transformData?: (data: any) => T;
}
```

## Usage

```tsx
import { UseExecuteOptions } from 'uxp/components';
```

