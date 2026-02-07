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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|item|Partial<T>|No|-|-|
|children|React.ReactNode|No|-|-|

