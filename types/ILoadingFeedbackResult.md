# ILoadingFeedbackResult

The result of calling the useLoadingFeedback hook



## Definition

```tsx
interface ILoadingFeedbackResult {
    /** Show loading overlay with optional configuration */
    show: (options?: Omit<LoadingFeedbackProps, 'show'>) => void;
    /** Hide loading overlay */
    hide: () => void;
    /** Update loading message/progress while visible */
    update: (options: Omit<LoadingFeedbackProps, 'show'>) => void;
}
```

## Usage

```tsx
import { ILoadingFeedbackResult } from 'uxp/components';
```

## Related Types

- [LoadingFeedbackProps](../types/LoadingFeedbackProps.md)

