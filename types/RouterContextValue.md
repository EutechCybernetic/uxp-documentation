# RouterContextValue

Router context value with navigation helpers.


## Definition

```tsx
export interface RouterContextValue {
    /** Current location or null if no router */
    location: Location<any> | null;

    /** Enhanced navigation function supporting both regular and contextual navigation */
    navigate: EnhancedNavigateFunction | null;

    /** Route parameters */
    params: Readonly<Params<string>> | null;

    /** True if inside a router */
    hasRouter: boolean;

    /** Utility to generate URLs with query handling */
    generateURL: (options: GenerateURLOptions) => string;
}
```

## Usage

```tsx
import { RouterContextValue } from 'uxp/components';
```

## Related Types

- [EnhancedNavigateFunction](../types/EnhancedNavigateFunction.md)
- [GenerateURLOptions](../types/GenerateURLOptions.md)

