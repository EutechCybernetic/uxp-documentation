# useRouterContext


A custom React hook that retrieves the RouterContext, throwing an error if used outside a RouterContextProvider.



## Installation

```tsx
import { useRouterContext } from 'uxp/components';
```

## Signature

```tsx
function useRouterContext(): RouterContextValue
```

## Examples

```tsx
const MyComponent = () => {
  const routerContext = useRouterContext();
  return <div>{routerContext.someProperty}</div>;
};
```

```tsx
const MyComponent = () => {
  const { someProperty, navigate } = useRouterContext();
  return (
    <div>
      <p>{someProperty}</p>
      <button onClick={() => navigate('/dashboard')}>
        Go to Dashboard
      </button>
    </div>
  );
};
```

## Related Types

- [RouterContextValue](../types/RouterContextValue.md)
- [EnhancedNavigateFunction](../types/EnhancedNavigateFunction.md)
- [GenerateURLOptions](../types/GenerateURLOptions.md)

