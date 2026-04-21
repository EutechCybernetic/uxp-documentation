# IConfigurationViewSection


Configuration section definition


## Definition

```tsx
interface IConfigurationViewSection {
    /** Section identifier */
    id: string

    /** Section title shown in sidebar and header */
    title: string;

    /** Keywords for search filtering (title is searched by default) */
    keywords?: string[];

    /** Section content rendered in main area */
    content: React.ReactNode;

    /** Hides the header */
    hideHeader?: boolean;

    /** Optional action buttons rendered on the right side of the content header */
    actions?: React.ReactNode;
}
```

## Usage

```tsx
import { IConfigurationViewSection } from 'uxp/components';
```

