# InfoCardGroupInputProps


Props for InfoCardGroupInput - a form input component for selecting multiple items with InfoCard style presentation


## Definition

```tsx
export interface InfoCardGroupInputProps {
    /**
     * List of available items to select from
     * Can be static array or dynamic data function
     */
    options: IOption[] | any[] | IDataFunction;

    /**
     * Array of currently selected values (not full objects, just values)
     */
    selected: string[];

    /**
     * Callback when selection changes
     * Returns array of selected values and optionally full option objects
     */
    onChange: (values: string[], options?: IOption[] | any[]) => void;

    /**
     * Field name for label display
     * Defaults to 'label'
     */
    labelField?: string;

    /**
     * Field name for value
     * Defaults to 'value'
     */
    valueField?: string;

    /**
     * Field mappings for InfoCard display
     * If not provided, defaults to using labelField for name/title
     */
    fields?: InfoCardFields;

    /**
     * Placeholder text when no items selected
     */
    placeholder?: string;

    /**
     * Additional CSS class names
     */
    className?: string;

    /**
     * Validation state
     */
    isValid?: boolean;

    /**
     * Maximum number of profile images to display before showing "+N" badge
     * Defaults to 5
     */
    maxVisible?: number;

    /**
     * Size of the profile images
     */
    size?: Size;

    /**
     * Shape of the profile images
     */
    shape?: Shape;

    /**
     * Position for the dropdown
     */
    dropdownPosition?: DropdownPosition;

    /**
     * Label for the "Add" button
     * Defaults to localized "Add"
     */
    addButtonLabel?: string;

    /**
     * Page size for paginated data loading
     */
    pageSize?: number;

    /**
     * When loading options dynamically (paginated), we need to pass the selected item labels
     */
    selectedLabels?: string[] | ((selected: string[]) => Promise<any[]>);
}
```

## Usage

```tsx
import { InfoCardGroupInputProps } from 'uxp/components';
```

## Related Types

- [IOption](../types/IOption.md)
- [IDataFunction](../types/IDataFunction.md)
- [InfoCardFields](../types/InfoCardFields.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

