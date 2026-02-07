# useDeleteAction


Custom hook for deleting objects with dependency checking and confirmation dialogs



## Installation

```tsx
import { useDeleteAction } from 'uxp/components';
```

## Signature

```tsx
function useDeleteAction(): UseDeleteActionResult
```

## Examples

```tsx
tsx
const deleteAction = useDeleteAction();

const handleDelete = async () => {
  await deleteAction.delete({
    model: 'Location.Location',
    key: locationKey,
    canHide: true,
    onSuccess: (action) => {
      if (action === 'delete') {
        navigate('/locations');
      } else {
        window.location.reload();
      }
    }
  });
};
```

## Related Types

- [UseDeleteActionResult](../types/UseDeleteActionResult.md)
- [DeleteActionParams](../types/DeleteActionParams.md)
- [MakeVisibleActionParams](../types/MakeVisibleActionParams.md)
- [AuditDeleteResult](../types/AuditDeleteResult.md)

