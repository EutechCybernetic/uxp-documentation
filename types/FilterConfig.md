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
}
```

## Usage

```tsx
import { FilterConfig } from 'uxp/components';
```

## Related Types

- [FormSectionProps](../types/FormSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)
- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)

