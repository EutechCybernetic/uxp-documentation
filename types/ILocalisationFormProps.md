# ILocalisationFormProps




## Definition

```tsx
interface ILocalisationFormProps {
    code: string,
    useGoogleTranslate?: boolean,
    className?: string,
    /** Custom save handler. If not provided, uses default saveLocalizations service.
     * Signature: (code: string, messages: LocalizationMessage[]) => Promise<{ success: boolean, error?: string }>
     */
    onSave?: (code: string, messages: LocalizationMessage[]) => Promise<{ success: boolean, error?: string }>,
    /** Callback when cancel button is clicked */
    onCancel?: () => void,
    /** Custom label for submit button. If not provided, uses "Save Changes" */
    submitButtonLabel?: string,
    /** Custom label for cancel button. If not provided, uses "Cancel" */
    cancelButtonLabel?: string,
    /** Hide the cancel button */
    hideCancelButton?: boolean,
    /**
     * Provide custom messages instead of fetching from backend.
     * Format: { [languageCode]: message }
     */
    customMessages?: Record<string, string>,
}
```

## Usage

```tsx
import { ILocalisationFormProps } from 'uxp/components';
```

## Related Types

- [LocalizationMessage](../types/LocalizationMessage.md)

