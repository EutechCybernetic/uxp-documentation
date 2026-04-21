# MakeVisibleActionParams

Parameters for make visible action


## Definition

```tsx
export interface MakeVisibleActionParams {
    /**
     * Model name in format "App.Model" (e.g., "Location.Location")
     */
    model: string;

    /**
     * Primary key of the object to make visible
     */
    key: string | number;

    /**
     * Show confirmation dialog before making visible
     * Defaults to true
     */
    showConfirmation?: boolean;

    /**
     * Custom title for the confirmation dialog
     */
    confirmTitle?: string;

    /**
     * Custom confirmation message
     */
    confirmMessage?: string;

    /**
     * Custom success message
     */
    successMessage?: string;

    /**
     * Custom error title (string or function that receives error object)
     */
    errorTitle?: string | ((error: any) => string);

    /**
     * Custom error message (string or function that receives error object)
     */
    errorMessage?: string | ((error: any) => string);

    /**
     * Callback on successful make visible
     */
    onSuccess?: () => void;

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
import { MakeVisibleActionParams } from 'uxp/components';
```

