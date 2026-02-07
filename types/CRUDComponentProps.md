# CRUDComponentProps



CRUD component props


## Definition

```tsx
interface CRUDComponentProps {
    /**
     * list view props 
     */
    list: ListProps,
    /**
     * add view props 
     */
    add?: FormProps,
    /**
     * option to render a custom add  view
     */
    renderCustomAddView?: RenderCustomFormView
    /**
     * edit view props 
     */
    edit?: ExtendedFormProps,
    /**
     * option to render a custom edit view
     */
    renderCustomEditView?: RenderCustomFormView
    /**
     * option to disable views
     */
    disableViews?: {
        add?: boolean;
        edit?: boolean;
        delete?: boolean;
    },
    /**
     * name of the entit, this will be used in notifications 
     */
    entityName?: string,
    /**
     * custom class name
     */
    className?: string
}
```

## Usage

```tsx
import { CRUDComponentProps } from 'uxp/components';
```

## Related Types

- [ListProps](../types/ListProps.md)
- [TableColumn](../types/TableColumn.md)
- [Column](../types/Column.md)
- [ActionResponse](../types/ActionResponse.md)
- [FormProps](../types/FormProps.md)
- [DynamicFormProps](../types/DynamicFormProps.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [RenderCustomFormView](../types/RenderCustomFormView.md)
- [ExtendedFormProps](../types/ExtendedFormProps.md)

