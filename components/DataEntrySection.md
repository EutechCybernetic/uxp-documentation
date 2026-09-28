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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-dynamic-form-dataentrysection--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DataEntrySection live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|"Asset details"|
|columns|1 \| 2 \| 3|No|1|-|
|maxColumnWidth|string|No|-|maxColumnWidth="100%"|
|separator|boolean|No|false|-|
|show|(data: IFormData) => boolean|No|-|-|
|collapsible|boolean|No|false|-|
|defaultExpanded|boolean|No|true|-|
|children|React.ReactNode|No|-|Two fields <> <DataEntryField field="name" title="Name" type="text" /> <DataEnt…|

## Related Types

- [DataEntrySectionProps](../types/DataEntrySectionProps.md)
- [IFormData](../types/IFormData.md)
- [FormValue](../types/FormValue.md)

