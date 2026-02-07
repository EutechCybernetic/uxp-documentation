# undefined

Union type for all possible details configurations
- InfoCardDetailsContent: Custom render function or ReactNode
- UserDetailField[]: Simple array of fields with auto-generated labels
- UserDetailsConfig: Full configuration with fields and layout options


## Definition

```tsx
type UserInfoCardDetails =
    | InfoCardDetailsContent
    | UserDetailField[]
    | UserDetailsConfig;
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

