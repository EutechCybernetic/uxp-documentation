# DataEntrySubSectionProps


Props for DataEntrySubSection component.
Used to define sub-sections within a DataEntrySection — particularly useful
for grouping fields inside a tab or wizard step with their own title and column layout.


## Definition

```tsx
export interface DataEntrySubSectionProps {
    /**
     * Sub-section title displayed above the fields
     */
    title?: string;

    /**
     * Number of columns to display fields in
     * @default 1
     */
    columns?: 1 | 2 | 3;

    /**
     * Maximum width of each column in the section grid.
     * Use '100%' to make fields fill the full available width.
     */
    maxColumnWidth?: string;

    /**
     * Show a separator line below the sub-section
     * @default false
     */
    separator?: boolean;

    /**
     * Conditional visibility function.
     */
    show?: (data: IFormData) => boolean;

    /**
     * If true, the sub-section renders as a collapsible panel.
     * @default false
     */
    collapsible?: boolean;

    /**
     * Whether the collapsible sub-section is expanded by default.
     * Only used when collapsible is true.
     * @default true
     */
    defaultExpanded?: boolean;

    /**
     * DataEntryField components
     */
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { DataEntrySubSectionProps } from 'uxp/components';
```

## Related Types

- [IFormData](../types/IFormData.md)
- [FormValue](../types/FormValue.md)

