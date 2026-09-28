# CRUDComponentProps



CRUD component props


## Definition

```tsx
interface CRUDComponentProps {
    /**
     * list view props 
     * @example
     * {
     *   title: 'Assets',
     *   columns: [
     *     { id: 'name', label: 'Name' },
     *     { id: 'status', label: 'Status' },
     *     { id: 'location', label: 'Location' },
     *   ],
     *   defaultPageSize: 5,
     *   data: { getData: [
     *     { id: 1, name: 'Chiller 01', status: 'Running', location: 'Level 1' },
     *     { id: 2, name: 'Chiller 02', status: 'Stopped', location: 'Level 1' },
     *     { id: 3, name: 'AHU 01', status: 'Running', location: 'Level 2' },
     *     { id: 4, name: 'AHU 02', status: 'Fault', location: 'Level 2' },
     *     { id: 5, name: 'Pump 01', status: 'Running', location: 'Basement' },
     *     { id: 6, name: 'Pump 02', status: 'Running', location: 'Basement' },
     *     { id: 7, name: 'Boiler 01', status: 'Stopped', location: 'Roof' },
     *   ] },
     *   search: { enabled: true, fields: ['name', 'location'] },
     *   addButton: { label: 'New asset', icon: 'fas plus' },
     * }
     */
    list: ListProps,
    /**
     * add view props 
     * @example
     * {
     *   title: 'New asset',
     *   formStructure: [
     *     {
     *       title: 'Asset details',
     *       columns: 2,
     *       fields: [
     *         { name: 'name', label: 'Name', type: 'text', placeholder: 'e.g. Chiller 03', validate: { required: true } },
     *         { name: 'status', label: 'Status', type: 'select', options: [
     *             { label: 'Running', value: 'Running' },
     *             { label: 'Stopped', value: 'Stopped' },
     *             { label: 'Fault', value: 'Fault' },
     *           ] },
     *         { name: 'location', label: 'Location', type: 'text' },
     *         { name: 'commissioned', label: 'Commissioned on', type: 'date' },
     *         { name: 'notes', label: 'Notes', type: 'textarea' },
     *       ],
     *     },
     *   ],
     *   onSubmit: async (data) => ({ status: 'done', message: 'Asset created' }),
     * }
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
     * @example "Asset"
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
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [WizardState](../types/WizardState.md)
- [RenderCustomFormView](../types/RenderCustomFormView.md)
- [ExtendedFormProps](../types/ExtendedFormProps.md)

