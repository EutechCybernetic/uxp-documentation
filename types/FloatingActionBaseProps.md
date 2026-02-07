# FloatingActionBaseProps




## Definition

```tsx
export interface FloatingActionBaseProps {
    id: string;
    /** Current editing state */
    isEditing: boolean;
    /** Callback to enable edit mode */
    onEnterEditMode: () => void;
    /** callback to exit edit mode */
    onExitEditMode: () => void;
    /** Custom floating action buttons (rendered above the exit button) */
    customActions?: CustomFloatingAction[];
}
```

## Usage

```tsx
import { FloatingActionBaseProps } from 'uxp/components';
```

## Related Types

- [CustomFloatingAction](../types/CustomFloatingAction.md)
- [FloatingActionButtonVisibility](../types/FloatingActionButtonVisibility.md)

