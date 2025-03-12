# CRUDComponentProps





CRUD component props




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
    className?:string 
}
```

## Usage



```tsx
import {CRUDComponentProps} from 'uxp/components';
```

