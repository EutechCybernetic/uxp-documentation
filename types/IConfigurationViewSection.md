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

    /**
     * Section content rendered in main area. A function renders only while the section is open
     * (nothing of a hidden section mounts or loads).
     */
    content: React.ReactNode | (() => React.ReactNode);

    /** Hides the header — content fills the full area */
    hideHeader?: boolean;

    /** Optional action buttons rendered on the right side of the header */
    actions?: React.ReactNode;
}
```

## Usage

```tsx
import { IConfigurationViewSection } from 'uxp/components';
```

