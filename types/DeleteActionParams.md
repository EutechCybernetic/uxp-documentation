# DeleteActionParams

Parameters for delete action


## Definition

```tsx
export interface DeleteActionParams {
    /**
     * Model name in format "App.Model" (e.g., "Location.Location")
     */
    model: string;

    /**
     * Primary key of the object to delete
     */
    key: string | number;

    /**
     * Allow hiding the object if deletion is not possible due to dependencies
     * Defaults to false
     */
    canHide?: boolean;

    /**
     * Custom title for the delete dialog
     */
    deleteTitle?: string;

    /**
     * Custom confirmation message for delete
     */
    deleteMessage?: string;

    /**
     * Custom message when object has dependencies
     */
    hideMessage?: string;

    /**
     * Callback on successful delete or hide
     */
    onSuccess?: (action: 'delete' | 'hide') => void;

    /**
     * Callback on cancel
     */
    onCancel?: () => void;

    /**
     * Callback on error
     */
    onError?: (error: string) => void;
}
```

## Usage

```tsx
import { DeleteActionParams } from 'uxp/components';
```

