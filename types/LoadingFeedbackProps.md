# LoadingFeedbackProps

## Definition

```tsx
export interface LoadingFeedbackProps {
    /**
     * Show/hide the loading overlay
     * @example true
     */
    show: boolean
    /**
     * Main message to display
     * @example "Saving changes"
     */
    message?: string
    /**
     * Optional submessage or description
     * @example "Please wait"
     */
    submessage?: string
    /** Progress percentage (0-100) - optional */
    progress?: number
    /** Custom icon - defaults to spinner */
    icon?: any
}
```

## Usage

```tsx
import { LoadingFeedbackProps } from 'uxp/components';
```

