# useNavigateWrapper


A custom React hook that wraps react-router-dom's useNavigate for typed navigation.
Must be used within a react-router-dom context.



## Installation

```tsx
import { useNavigateWrapper } from 'uxp/components';
```

## Signature

```tsx
function useNavigateWrapper(): CustomNavigateFunction
```

## Examples

```tsx
const MyComponent = () => {
  const navigate = useNavigateWrapper();
  return <button onClick={() => navigate('/home')}>Go to Home</button>;
};
```

```tsx
const MyComponent = () => {
  const navigate = useNavigateWrapper();
  return (
    <div>
      <button onClick={() => navigate('/profile', { state: { userId: 123 } })}>
        Go to Profile
      </button>
      <button onClick={() => navigate(-1)}>Go Back</button>
    </div>
  );
};
```

## Related Types

- [CustomNavigateFunction](../types/CustomNavigateFunction.md)

