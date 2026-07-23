# DataEntryField


Placeholder component for declarative field definition.
This component doesn't render anything - it's only used to extract props
in the parent DataEntryForm component.



## Installation

```tsx
import { DataEntryField } from 'uxp/components';
```

## Signature

```tsx
const DataEntryField: React.FunctionComponent<DataEntryFieldProps>
```

## Examples

```tsx
tsx
<DataEntryField
  field="email"
  title="Email Address"
  type="email"
  icon="fas at"
  required
  validate={async (val) => ({
    valid: val.includes('@'),
    error: 'Invalid email'
  })}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|field|string|Yes|-|-|
|title|string|Yes|-|-|
|type|'text' \| 'password' \| 'number' \| 'email' \| 'checkbox' \| 'toggle' \| 'select' \| 'date' \| 'time' \| 'datetime' \| 'daterange' \| 'hidden' \| 'textarea' \| 'json' \| 'readonly'|No|'text'|-|
|value|[FormValue](../types/FormValue.md)|No|-|-|
|placeholder|string|No|-|-|
|icon|string|No|-|-|
|children|(data: IFormData, onChange: (value: any) => void) => React.ReactNode|No|-|-|
|show|(data: IFormData) => boolean|No|-|-|
|options|Array<{ label: string \| number; value: string \| number }> \| Array<any>|No|-|-|
|getOptions|(data: IFormData) => (Array<{ label: string \| number; value: string \| number }> \| Array<any>)|No|-|-|
|getPaginatedOptions|( data: IFormData, max: number, lastPageToken: string, args?: any ) => Promise<{ items: Array<any>; pageToken: string; total?: number }>|No|-|-|
|selectedOptionLabel|string \| ((data: IFormData, selected: string) => Promise<any>)|No|-|-|
|labelField|string|No|'label'|-|
|valueField|string|No|'value'|-|
|allowZero|boolean|No|false|-|
|allowNegative|boolean|No|false|-|
|formatter|(value: any) => any|No|-|-|
|required|boolean \| ((data: IFormData) => boolean)|No|false|-|
|allowEmptyString|boolean|No|false|-|
|minLength|number|No|-|-|
|maxLength|number|No|-|-|
|regExp|RegExp|No|-|-|
|minVal|number|No|-|-|
|maxVal|number|No|-|-|
|validate|(value: any, data: IFormData) => CustomValidateResponse \| Promise<CustomValidateResponse>|No|-|-|

## Related Types

- [DataEntryFieldProps](../types/DataEntryFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)

