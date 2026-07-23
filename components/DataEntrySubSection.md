# DataEntrySubSection


Placeholder component for declarative sub-section definition within a DataEntrySection.
Does not render anything — props are extracted by DataEntryForm.



## Installation

```tsx
import { DataEntrySubSection } from 'uxp/components';
```

## Signature

```tsx
const DataEntrySubSection: React.FunctionComponent<DataEntrySubSectionProps>
```

## Examples

```tsx
tsx
<DataEntrySection title="Step 1 - Personal">
  <DataEntrySubSection title="Basic Info" columns={2}>
    <DataEntryField field="firstName" title="First Name" required />
    <DataEntryField field="lastName" title="Last Name" required />
  </DataEntrySubSection>
  <DataEntrySubSection title="Address" separator>
    <DataEntryField field="city" title="City" />
  </DataEntrySubSection>
</DataEntrySection>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|columns|1 \| 2 \| 3|No|1|-|
|maxColumnWidth|string|No|-|-|
|separator|boolean|No|false|-|
|show|(data: IFormData) => boolean|No|-|-|
|collapsible|boolean|No|false|-|
|defaultExpanded|boolean|No|true|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [DataEntrySubSectionProps](../types/DataEntrySubSectionProps.md)
- [IFormData](../types/IFormData.md)
- [FormValue](../types/FormValue.md)

