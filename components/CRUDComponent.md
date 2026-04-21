# CRUDComponent




## Installation

```tsx
import { CRUDComponent } from 'uxp/components';
```

## Signature

```tsx
const CRUDComponent: React.ForwardRefExoticComponent<React.RefAttributes<CRUDComponentInstanceProps> & CRUDComponentProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|list|[ListProps](../types/ListProps.md)|Yes|-|-|
|add|[FormProps](../types/FormProps.md)|No|-|-|
|renderCustomAddView|[RenderCustomFormView](../types/RenderCustomFormView.md)|No|-|-|
|edit|[ExtendedFormProps](../types/ExtendedFormProps.md)|No|-|-|
|renderCustomEditView|[RenderCustomFormView](../types/RenderCustomFormView.md)|No|-|-|
|disableViews|{ add?: boolean; edit?: boolean; delete?: boolean; }|No|-|-|
|entityName|string|No|-|-|
|className|string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|refreshList|() => void|option to refresh the list |

## Related Types

- [CRUDComponentProps](../types/CRUDComponentProps.md)
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
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [WizardState](../types/WizardState.md)
- [RenderCustomFormView](../types/RenderCustomFormView.md)
- [ExtendedFormProps](../types/ExtendedFormProps.md)
- [CRUDComponentInstanceProps](../types/CRUDComponentInstanceProps.md)

