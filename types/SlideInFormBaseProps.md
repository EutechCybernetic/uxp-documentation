# SlideInFormBaseProps


Base props shared by all SlideInForm variants


## Definition

```tsx
interface SlideInFormBaseProps {
    /**
     * Form title displayed in the header
     */
    title: string;

    /**
     * Whether the form panel is open
     * @default false
     */
    isOpen?: boolean;

    /**
     * Additional CSS class for the panel wrapper
     */
    className?: string;

    /**
     * Callback when form is submitted successfully
     * @param data - The validated form data
     */
    onSave: (data: any) => Promise<void>;

    /**
     * Callback when form is cancelled
     */
    onCancel: () => void;

    /**
     * Direction from which the panel slides in
     * @default 'right'
     */
    direction?: 'left' | 'right' | 'top' | 'bottom';

    /**
     * Reference to container element for portal mounting
     */
    containerRef?: React.RefObject<HTMLDivElement>;

    /**
     * Custom label for save button
     * @default 'Save' (localized)
     */
    saveButtonLabel?: string;

    /**
     * Custom label for save button when loading
     * @default 'Saving...' (localized)
     */
    saveButtonLoadingLabel?: string;

    /**
     * Custom label for cancel button
     * @default 'Cancel' (localized)
     */
    cancelButtonLabel?: string;

    /**
     * Instructions text to display in the header
     * @default 'Fields marked with an * are mandatory'
     */
    instructions?: string;

    /**
     * Hide the instructions text
     * @default false
     */
    hideInstructions?: boolean;

    /**
     * Additional action buttons or elements to render in the header
     * Rendered between instructions and save/cancel buttons
     */
    additionalHeaderActions?: React.ReactNode;
}
```

## Usage

```tsx
import { SlideInFormBaseProps } from 'uxp/components';
```

