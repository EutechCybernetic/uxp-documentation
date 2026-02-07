# CustomNavigateFunction


Type definition for a custom navigation function compatible with react-router-dom's navigate.


## Definition

```tsx
export type CustomNavigateFunction = {
    /**
     * Navigates to a specified path with optional replace and state options.
     */
    (path: string, options?: { replace?: boolean; state?: any }): void;
    /**
     * Navigates forward or backward by a specified number of steps in the history stack.
     */
    (delta: number): void;
};
```

## Usage

```tsx
import { CustomNavigateFunction } from 'uxp/components';
```

