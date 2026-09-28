# DataEntryForm


DataEntryForm component - A declarative JSX wrapper around DynamicForm

Provides a simple JSX-based API for creating forms while supporting all DynamicForm features.
This is a pure form component without any panel/modal integration.



## Installation

```tsx
import { DataEntryForm } from 'uxp/components';
```

## Signature

```tsx
const DataEntryForm: React.MemoExoticComponent<React.ForwardRefExoticComponent<React.RefAttributes<DataEntryFormHandlers> & DataEntryFormProps>>
```

## Examples

```tsx
tsx
const formRef = useRef<DataEntryFormHandlers>(null);

<DataEntryForm
  item={user}
  onSubmit={handleSubmit}
  onCancel={handleCancel}
  renderStyle="tabs"
  ref={formRef}
>
  <DataEntrySection title="Basic Info" columns={2}>
    <DataEntryField field="firstName" title="First Name" required />
    <DataEntryField field="lastName" title="Last Name" required />
    <DataEntryField
      field="email"
      title="Email"
      type="email"
      icon="fas at"
      required
      validate={async (val) => {
        const valid = val.includes('@');
        return { valid, error: valid ? undefined : 'Invalid email' };
      }}
    />
  </DataEntrySection>
</DataEntryForm>
```

## Live preview

[Open DataEntryForm in the playground →](<https://story.uxp.iviva.com/?path=/docs/forms-dynamic-form-dataentryform--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|item|Partial<T>|No|-|{ name: 'Chiller 01', location: 'Level 1' }|
|children|React.ReactNode|No|-|One section <DataEntrySection title="Asset details" columns={2}> <DataEntryFiel…|

