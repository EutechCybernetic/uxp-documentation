# AppRoleInputProps


Props for the AppRoleInput component


## Definition

```tsx
export interface AppRoleInputProps extends InputStateProps {
    /**
     * Comma-separated "App:Role" pairs, e.g. "System:Admin,Facilities:Manager"
     */
    value: string;

    /**
     * Called with the updated comma-separated value whenever the selection changes.
     */
    onChange: (value: string) => void;
}
```

## Usage

```tsx
import { AppRoleInputProps } from 'uxp/components';
```

## Related Types

- [InputStateProps](../types/InputStateProps.md)

