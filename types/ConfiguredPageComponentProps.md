# ConfiguredPageComponentProps

## Definition

```tsx
interface ConfiguredPageComponentProps {
    pageId: string;
    additionalProps?: any;
    configuredProps?: Record<string, any>;
    notFoundMessage?: string | React.ReactNode;
    /** Hides the page editor (pencil, ?configurepage=1) — for pages configured elsewhere, e.g. a dashboard's View link. */
    disablePageEditor?: boolean;
}
```

## Usage

```tsx
import { ConfiguredPageComponentProps } from 'uxp/components';
```

