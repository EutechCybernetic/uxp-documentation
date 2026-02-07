# ExecuteConfigBase

Base interface for all execution configurations.
Contains common properties for data extraction and transformation.


## Definition

```tsx
export interface ExecuteConfigBase<T = any> {
    /**
    * Default value to use when data is null or on error.
    * Also used as initial state value.
    */
    defaultValue?: T,
    /**
     * Extract data from response before processing.
     * Define at service level to centralize response structure handling.
     * Can be overridden at hook level via UseExecuteOptions.
     *
     * @example
     * ```typescript
     * // Simple property from { apps: [...] }
     * extractData: 'apps'
     *
     * // Array chained: data[0].apps
     * extractData: [0, 'apps']
     *
     * // Path notation: data[0].apps
     * extractData: '[0].apps'
     *
     * // Nested path: data.result.items
     * extractData: 'result.items'
     *
     * // Function for complex cases
     * extractData: (data) => data?.result?.[0]?.items
     * ```
     */
    extractData?: string | (string | number)[] | ((data: any) => any);

    /**
     * Transform/format data after extraction.
     * Define at service level for consistent data processing.
     * Can be overridden at hook level via UseExecuteOptions.
     *
     * @example
     * ```typescript
     * // Parse JSON strings
     * transformData: (data) => toJSON(data, [])
     *
     * // Parse JSON in nested fields
     * transformData: (data) => ({
     *   ...data,
     *   metadata: toJSON(data.metadata, {})
     * })
     *
     * // Format dates
     * transformData: (data) => data.map(item => ({
     *   ...item,
     *   createdAt: new Date(item.createdAt)
     * }))
     * ```
     */
    transformData?: (data: any) => T;
}
```

## Usage

```tsx
import { ExecuteConfigBase } from 'uxp/components';
```

