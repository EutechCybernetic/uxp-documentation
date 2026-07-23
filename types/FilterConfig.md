# FilterConfig


Configuration for the filter view.


## Definition

```tsx
export interface FilterConfig {
    /**
     * Form fields configuration for the filter panel, based on FormSectionProps.
     */
    formFields?: FormSectionProps[];

    /**
     * Custom render function for displaying filters, providing full control over the filter UI.
     */
    renderFilters?: FilterCustomRender;

    /**
     * Optional custom counter for the active-filter badge. Receives the applied filters
     * and returns the count to display. Useful with renderFilters/renderField when the
     * default key counting is inaccurate.
     */
    getFilterCount?: (filters: Filters) => number;

    /**
     * When provided, adds an "Advanced" mode toggle to the filter panel that allows natural language
     * queries powered by the QueryEngine AI search endpoint.
     */
    advanced?: {
        /**
         * The primary data source for the AI query (e.g. "sqltable:AssetMaster").
         */
        baseDataSource: string;
        /**
         * Optional object type used to auto-load predefined queries (authored in the
         * Lucy Data Explorer) for this list. When set, the advanced panel shows a
         * pick-list of matching predefined queries below the question input.
         */
        objectType?: string;
    };
}
```

## Usage

```tsx
import { FilterConfig } from 'uxp/components';
```

## Related Types

- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)

