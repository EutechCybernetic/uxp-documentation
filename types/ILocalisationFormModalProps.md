# ILocalisationFormModalProps




## Definition

```tsx
interface ILocalisationFormModalProps {
    code: string,
    useGoogleTranslate?: boolean,
    beforeOpen?: () => boolean
    className?: string
    /**
     * Custom save handler. If not provided, uses default saveLocalizations service.
     * Signature: (code: string, messages: LocalizationMessage[]) => Promise<{ success: boolean, error?: string }>
     */
    onSave?: (code: string, messages: LocalizationMessage[]) => Promise<{ success: boolean, error?: string }>,
    /**
     * Custom label for submit button. If not provided, uses "Save Changes"
     */
    submitButtonLabel?: string,
    /**
     * Custom label for cancel button. If not provided, uses "Cancel"
     */
    cancelButtonLabel?: string,
    /**
     * Hide the cancel button
     */
    hideCancelButton?: boolean,
    /**
     * Custom trigger button element. If not provided, renders default edit icon button.
     * Useful for custom styling or different button types.
     */
    trigger?: React.ReactElement,
    /**
     * Hide the trigger button. Use this when you want to control modal opening externally.
     */
    hideTrigger?: boolean,
    /**
     * Provide custom messages instead of fetching from backend.
     * Format: { [languageCode]: message }
     */
    customMessages?: Record<string, string>,
    /**
     * Render an editable message-code field. Use when creating a new message
     * (pass an empty code); the typed code is passed to onSave.
     */
    allowCodeEdit?: boolean,
}
```

## Usage

```tsx
import { ILocalisationFormModalProps } from 'uxp/components';
```

## Related Types

- [LocalizationMessage](../types/LocalizationMessage.md)

