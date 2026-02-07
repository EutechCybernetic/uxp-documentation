# UseDeleteActionResult

Hook result interface


## Definition

```tsx
export interface UseDeleteActionResult {
    /**
     * Delete an object with confirmation
     */
    delete: (params: DeleteActionParams) => Promise<void>;

    /**
     * Make an object visible (unhide) with optional confirmation
     */
    makeVisible: (params: MakeVisibleActionParams) => Promise<void>;

    /**
     * Check if object has dependencies without showing confirmation
     */
    checkDependencies: (model: string, key: string | number) => Promise<AuditDeleteResult>;
}
```

## Usage

```tsx
import { UseDeleteActionResult } from 'uxp/components';
```

## Related Types

- [DeleteActionParams](../types/DeleteActionParams.md)
- [MakeVisibleActionParams](../types/MakeVisibleActionParams.md)
- [AuditDeleteResult](../types/AuditDeleteResult.md)

