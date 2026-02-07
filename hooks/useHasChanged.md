# useHasChanged


A custom React hook that detects if a value has changed using deep comparison.
Returns true when the value changes from the previous render, false otherwise.



## Installation

```tsx
import { useHasChanged } from 'uxp/components';
```

## Signature

```tsx
function useHasChanged(value: T): boolean
```

## Examples

```tsx
const MyComponent = () => {
  const [count, setCount] = useState(0);
  const hasCountChanged = useHasChanged(count);

  return (
    <div>
      <p>Count: {count}</p>
      <p>Has changed: {hasCountChanged.toString()}</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
    </div>
  );
};
```

```tsx
const MyComponent = () => {
  const [user, setUser] = useState({ name: 'John', age: 30 });
  const hasUserChanged = useHasChanged(user);

  return (
    <div>
      <p>User: {JSON.stringify(user)}</p>
      <p>Has changed: {hasUserChanged.toString()}</p>
      <button onClick={() => setUser({ ...user, age: user.age + 1 })}>
        Update Age
      </button>
    </div>
  );
};
```

