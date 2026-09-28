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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-dynamic-form-dataentryfield--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DataEntryField live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-dynamic-form-dataentryfield--default&amp;viewMode=story&amp;args=field%3Aemail%3Btitle%3AEmail+Address%3Btype%3Aemail%3Bicon%3Afas+at%3Brequired%3A%21true"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DataEntryField: Example 1"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|field|string|Yes|-|"name"|
|title|string|Yes|-|"Name"|
|type|'text' \| 'password' \| 'number' \| 'email' \| 'checkbox' \| 'toggle' \| 'select' \| 'date' \| 'time' \| 'datetime' \| 'daterange' \| 'hidden' \| 'textarea' \| 'json' \| 'readonly'|No|'text'|"text"|
|value|[FormValue](../types/FormValue.md)|No|-|-|
|placeholder|string|No|-|-|
|icon|string|No|-|-|
|children|(data: IFormData, onChange: (value: any) => void) => React.ReactNode|No|-|-|
|show|(data: IFormData) => boolean|No|-|-|
|dependsOn|string[]|No|-|-|
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

