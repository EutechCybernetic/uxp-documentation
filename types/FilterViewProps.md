# FilterViewProps


Props for the FilterView component


## Definition

```tsx
interface FilterViewProps {
    /**
     * Whether the filter panel is open
     */
    isOpen: boolean,

    /**
     * Callback to toggle the filter panel open/closed state
     */
    onToggle: () => void,

    /**
     * Currently applied filters
     */
    appliedFilters: Filters,

    /**
     * Callback that gets executed whenever filters are changed
     */
    onChange: (filters: Filters) => void,

    /**
     * Form field structure for rendering filter form
     */
    formFields: FormSectionProps[],

    /**
     * Optional custom render function for filter content
     */
    renderCustom?: FilterCustomRender
}
```

## Usage

```tsx
import { FilterViewProps } from 'uxp/components';
```

## Related Types

- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)

