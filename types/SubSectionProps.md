# SubSectionProps


Base section shape — shared by both top-level sections and sub-sections.


## Definition

```tsx
export interface SubSectionProps {
    title?: string
    fields: DynamicFormFieldProps[]
    columns?: 1 | 2 | 3
    maxColumnWidth?: string
    seperator?: boolean
    show?: (data: IFormData) => boolean
    collapsible?: boolean
    defaultExpanded?: boolean
}
```

## Usage

```tsx
import { SubSectionProps } from 'uxp/components';
```

## Related Types

- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)

