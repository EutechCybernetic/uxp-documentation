# useLoadingFeedback

The react hook for showing/hiding loading feedback overlay



## Installation

```tsx
import { useLoadingFeedback } from 'uxp/components';
```

## Signature

```tsx
function useLoadingFeedback(): ILoadingFeedbackResult
```

## Examples

```tsx
Basic usage
```tsx
const loading = useLoadingFeedback();

loading.show({ message: 'Processing...' });
// ... do work
loading.hide();
```

```tsx
With progress
```tsx
const loading = useLoadingFeedback();

loading.show({ message: 'Uploading...', progress: 0 });
// ... update progress
loading.update({ progress: 50 });
// ... complete
loading.hide();
```

```tsx
With async/await
```tsx
const loading = useLoadingFeedback();

const handleSave = async () => {
    loading.show({ message: 'Saving...' });
    try {
        await saveData();
    } finally {
        loading.hide();
    }
}
```

## Related Types

- [ILoadingFeedbackResult](../types/ILoadingFeedbackResult.md)
- [LoadingFeedbackProps](../types/LoadingFeedbackProps.md)

