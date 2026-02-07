# LoadingFeedbackProps

## Definition

```tsx
export interface LoadingFeedbackProps {
    /** Show/hide the loading overlay */
    show: boolean
    /** Main message to display */
    message?: string
    /** Optional submessage or description */
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

