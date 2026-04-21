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
     * Custom success message for delete action
     */
    deleteSuccessMessage?: string;

    /**
     * Custom success message for hide action
     */
    hideSuccessMessage?: string;

    /**
     * Custom error title (string or function that receives error object)
     */
    errorTitle?: string | ((error: any) => string);

    /**
     * Custom error message (string or function that receives error object)
     */
    errorMessage?: string | ((error: any) => string);

    /**
     * Enable two-step verification for delete action
     * User must type a verification text to confirm deletion
     * Defaults to false
     */
    requireVerification?: boolean;

    /**
     * Text that user must type to verify deletion
     * Defaults to "confirm" if requireVerification is true
     */
    verificationText?: string;

    /**
     * Custom prompt/instruction for verification
     * Defaults to "Please type **{text}** to confirm this action"
     */
    verificationPrompt?: string;

    /**
     * Enable case-sensitive verification text matching
     * Defaults to false (case-insensitive)
     */
    caseSensitive?: boolean;

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

