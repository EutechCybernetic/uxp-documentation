# ExecutionOptions

## Definition

```tsx
export interface ExecutionOptions extends CachingOptions {
    /** Set this to true to parse the data as JSON and return it */
    json?: boolean;
    // unique key for the request
    // better to have a combination of instance id and some text  (<instanceId>-<some-text>) to keep the uniqueness
    // this key will be used when caching and cancelling previous requests
    key?: string

    // cancel the previous request if a new request comes with the same key (above).
    // default is false
    cancelPrevious?: boolean,

    // to skip batching and execute separately, set to true.
    // default is false
    executeImmidiately?: boolean
}
```

## Usage

```tsx
import { ExecutionOptions } from 'uxp/components';
```

## Related Types

- [CachingOptions](../types/CachingOptions.md)

