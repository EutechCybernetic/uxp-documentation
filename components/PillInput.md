# PillInput


PillInput component - a CodeMirror-based input that converts expressions to visual pills.
Supports drag/drop, formatting, and contextual value selection.
Uses CodeMirror 6 with React 18 compatibility.



## Installation

```tsx
import { PillInput } from 'uxp/components';
```

## Signature

```tsx
const PillInput: React.ForwardRefExoticComponent<React.RefAttributes<any> & any>
```

## Examples

```tsx
Basic usage with field options
```tsx
<PillInput
  value="Hello {user.name}!"
  onChange={setValue}
  contextDataSections={[
    { label: "User", fields: [{ label: "Name", value: "user.name" }] }
  ]}
/>
```

```tsx
With custom pill configuration
```tsx
<PillInput
  value="{field.date|number|2}"
  onChange={setValue}
  contextDataSections={sections}
  pillConfiguration={{
    field: {
      valueIndex: 1,
      icon: "fas calendar",
      backgroundColor: "#007bff",
      textColor: "#fff"
    }
  }}
/>
```

```tsx
With ref for programmatic control
```tsx
const pillRef = useRef<PillInputRef>(null);

<PillInput
  ref={pillRef}
  value={text}
  onChange={setText}
  contextDataSections={sections}
/>

// Insert value programmatically
pillRef.current?.insertAtCursor("{new.value}");
```

