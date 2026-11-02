# ErrorPageProps


Props for the NotFound and NotAuthorized error pages


## Definition

```tsx
export interface ErrorPageProps {
    /** Replaces the default title */
    title?: string;
    /** Replaces the default description */
    description?: string;
    /** Replaces the default Go back button */
    action?: React.ReactNode;
    /** Presentation mode. Defaults to the full-page card; `inline` for gated sections/tabs. */
    mode?: ErrorStateMode;
}
```

## Usage

```tsx
import { ErrorPageProps } from 'uxp/components';
```

## Related Types

- [ErrorStateMode](../types/ErrorStateMode.md)

