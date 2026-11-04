# PageContextPage


The page the user is on, filled in by the shell from the URL.


## Definition

```tsx
export interface PageContextPage {
    /** App the page belongs to */
    appId?: string
    /** Page title */
    title?: string
    /** URL path */
    path: string
    /** Path parameters, e.g. { assetKey: '12' } */
    params: Record<string, string>
    /** Query parameters, e.g. { objectKey: '12', dt: 'general' } */
    query: Record<string, string>
    /** Set on a dashboard */
    dashboard?: { id: string, title?: string }
}
```

## Usage

```tsx
import { PageContextPage } from 'uxp/components';
```

