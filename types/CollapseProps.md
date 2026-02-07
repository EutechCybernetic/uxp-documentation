# CollapseProps


Props for the Collapse component


## Definition

```tsx
export interface CollapseProps {
    /**
     * The title of the collapse panel. Can be a string or a React node.
     */
    title: string | React.ReactNode;

    /**
     * Optional content to display on the right side of the collapse header.
     */
    rightContent?: React.ReactNode;

    /**
     * Content to display inside the collapse panel when expanded.
     */
    children?: React.ReactNode;

    /**
     * Determines if the collapse panel is expanded by default. Defaults to true.
     */
    defaultExpanded?: boolean;

    /**
     * Additional class names to apply to the collapse panel.
     */
    className?: string;
}
```

## Usage

```tsx
import { CollapseProps } from 'uxp/components';
```

