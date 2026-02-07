# useSearchParams


A custom React hook that extracts search parameters from the URL using react-router-dom.
Handles JSON-encoded values using the toJSON utility. Must be used within a react-router-dom context.



## Installation

```tsx
import { useSearchParams } from 'uxp/components';
```

## Signature

```tsx
function useSearchParams(): SearchParams<T>
```

## Examples

```tsx
const MyComponent = () => {
  const params = useSearchParams<{ name: string; age: string }>();
  return <div>Name: {params.name}, Age: {params.age}</div>;
};
```

```tsx
const MyComponent = () => {
  const params = useSearchParams<{ user: { name: string; age: number } }>();
  return (
    <div>
      User: {params.user?.name}, Age: {params.user?.age}
    </div>
  );
};
```

