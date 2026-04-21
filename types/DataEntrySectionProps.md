# DataEntrySectionProps


Props for DataEntrySection component.
This component is a placeholder used to declaratively define form sections in JSX.
All props are extracted by DataEntryForm and mapped to FormSectionProps.


## Definition

```tsx
export interface DataEntrySectionProps {
    /**
     * Section title displayed above the fields
     */
    title?: string;

    /**
     * Number of columns to display fields in
     * @default 1
     */
    columns?: 1 | 2 | 3;

    /**
     * Show a separator line below the section
     * @default false
     */
    separator?: boolean;

    /**
     * Conditional visibility function.
     * If provided, the section will only be shown when this returns true.
     * @param data - Current form data
     */
    show?: (data: IFormData) => boolean;

    /**
     * If true, the section renders as a collapsible panel.
     * @default false
     */
    collapsible?: boolean;

    /**
     * Whether the collapsible section is expanded by default.
     * Only used when collapsible is true.
     * @default true
     */
    defaultExpanded?: boolean;

    /**
     * DataEntryField or DataEntrySubSection components to render in this section
     */
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { DataEntrySectionProps } from 'uxp/components';
```

## Related Types

- [IFormData](../types/IFormData.md)
- [FormValue](../types/FormValue.md)

