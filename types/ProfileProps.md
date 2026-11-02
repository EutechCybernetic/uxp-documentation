# ProfileProps

Props for the UserProfile component


## Definition

```tsx
interface ProfileProps {
    /** Hide user details section. Default: false */
    hideDetails?: boolean
    /** Hide logout button. Default: false */
    hideLogout?: boolean
    /** Additional class name for styling */
    className?: string
    /** Child components */
    children?: React.ReactNode
    /** Called when the panel opens or closes (the mobile footer shows a Close bar while it is open) */
    onOpenChange?: (open: boolean) => void
}
```

## Usage

```tsx
import { ProfileProps } from 'uxp/components';
```

