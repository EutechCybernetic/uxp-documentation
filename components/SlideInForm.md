# SlideInForm


SlideInForm component - Flexible form integrated with SlideInPanel

Provides a slide-in panel with header, action buttons, and either DataEntryForm or DynamicForm.
Use this when you need a form in a SlideIn panel. For inline forms, use DataEntryForm or DynamicForm directly.



## Installation

```tsx
import { SlideInForm } from 'uxp/components';
```

## Signature

```tsx
const SlideInForm: React.MemoExoticComponent<React.ForwardRefExoticComponent<React.RefAttributes<SlideInFormHandlers> & SlideInFormProps>>
```

## Examples

#### DataEntryForm (JSX declarative API)

```tsx
tsx
const formRef = useRef<SlideInFormHandlers>(null);

<SlideInForm
  formType="data-entry"
  title="Edit User"
  isOpen={isOpen}
  item={user}
  onSave={handleSave}
  onCancel={handleCancel}
  direction="right"
  renderStyle="tabs"
  ref={formRef}
>
  <DataEntrySection title="Basic Info" columns={2}>
    <DataEntryField field="firstName" title="First Name" required />
    <DataEntryField field="lastName" title="Last Name" required />
  </DataEntrySection>
</SlideInForm>
```

#### DynamicForm (config-driven API)

```tsx
tsx
const formRef = useRef<SlideInFormHandlers>(null);

<SlideInForm
  formType="dynamic"
  title="Edit User"
  isOpen={isOpen}
  formStructure={formStructure}
  onSave={handleSave}
  onCancel={handleCancel}
  direction="right"
  renderStyle="tabs"
  ref={formRef}
/>
```

