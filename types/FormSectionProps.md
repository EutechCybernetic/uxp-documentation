# FormSectionProps




## Definition

```tsx
export interface FormSectionProps extends SubSectionProps {
    /**
     * Optional sub-sections. When provided, fields within each sub-section
     * are rendered with their own title/columns/separator — useful for
     * grouping fields inside a tab or wizard step.
     * When present, the top-level `fields` array is ignored for rendering.
     */
    sections?: SubSectionProps[]
}
```

## Usage

```tsx
import { FormSectionProps } from 'uxp/components';
```

## Related Types

- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)

