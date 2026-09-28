# CollapseProps


Props for the Collapse component


## Definition

```tsx
export interface CollapseProps {
    /**
     * The title of the collapse panel. Can be a string or a React node.
     * @example "Maintenance history"
     */
    title: string | React.ReactNode;

    /**
     * Optional content to display on the right side of the collapse header.
     */
    rightContent?: React.ReactNode;

    /**
     * Content to display inside the collapse panel when expanded.
     * @example Text
     * ```tsx
     * <div>Filter replaced on 12 Aug. Belt tension checked on 3 Sep.</div>
     * ```
     */
    children?: React.ReactNode;

    /**
     * Determines if the collapse panel is expanded by default. Defaults to true.
     * @example true
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

