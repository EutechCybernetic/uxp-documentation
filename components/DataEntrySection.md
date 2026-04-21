# DataEntrySection


Placeholder component for declarative section definition.
This component doesn't render anything - it's only used to extract props
in the parent DataEntryForm component.



## Installation

```tsx
import { DataEntrySection } from 'uxp/components';
```

## Signature

```tsx
const DataEntrySection: React.FunctionComponent<DataEntrySectionProps>
```

## Examples

```tsx
tsx
<DataEntrySection title="Personal Information" columns={2}>
  <DataEntryField field="firstName" title="First Name" required />
  <DataEntryField field="lastName" title="Last Name" required />
  <DataEntryField field="email" title="Email" type="email" />
</DataEntrySection>
```

```tsx
tsx
<DataEntrySection
  title="Conditional Section"
  show={(data) => data.showAdvanced === true}
  columns={3}
  separator
>
  <DataEntryField field="advanced1" title="Advanced Field 1" />
  <DataEntryField field="advanced2" title="Advanced Field 2" />
</DataEntrySection>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|columns|1 \| 2 \| 3|No|1|-|
|separator|boolean|No|false|-|
|show|(data: IFormData) => boolean|No|-|-|
|collapsible|boolean|No|false|-|
|defaultExpanded|boolean|No|true|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [DataEntrySectionProps](../types/DataEntrySectionProps.md)
- [IFormData](../types/IFormData.md)
- [FormValue](../types/FormValue.md)

