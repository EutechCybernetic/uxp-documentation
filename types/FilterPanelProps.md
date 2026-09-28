# FilterPanelProps


Props for the FilterPanel component


## Definition

```tsx
interface FilterPanelProps {
    /**
     * Called whenever the panel is opened
     */
    onOpen?: () => void;

    /**
     * Called whenever the panel gets dismissed
     */
    onClose?: () => void;

    /**
     * Called whenever the clear button on the panel is pressed
     * This button is available only when `enableClear` is set to `true`
     * @example Log
     * ```tsx
     * onClear={() => console.log('cleared')}
     * ```
     */
    onClear?: () => void;

    /**
     * Position of the filter panel relative to the trigger button
     * Defaults to 'bottom-right'
     */
    position?: DropdownPosition;

    /**
     * Any extra css classes to add to the filter panel content
     */
    className?: string;

    /**
     * Enable the clear button on the panel footer
     * When true, shows a clear filters button
     */
    enableClear?: boolean;

    /**
     * Custom icon for the filter trigger button
     * Defaults to 'filter'
     */
    icon?: string;

    /**
     * Filter content (form fields, inputs, etc.)
     * @example
     * ```tsx
     * <FilterPanel enableClear={hasFilters} onClear={clearFilters}>
     *   <FormField>
     *     <Label>Sort By</Label>
     *     <Select options={options} selected={selected} onChange={setSelected} />
     *   </FormField>
     * </FilterPanel>
     * ```
     * @example Status filter
     * ```tsx
     * <FormField>
     *     <Label>Status</Label>
     *     <Select
     *         options={[{ label: 'Running', value: 'Running' }, { label: 'Stopped', value: 'Stopped' }]}
     *         selected="Running"
     *         onChange={(value) => console.log('status', value)}
     *     />
     * </FormField>
     * ```
     */
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { FilterPanelProps } from 'uxp/components';
```

## Related Types

- [DropdownPosition](../types/DropdownPosition.md)

