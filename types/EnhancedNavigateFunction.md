# EnhancedNavigateFunction

Enhanced navigate function that supports both regular and contextual navigation.


## Definition

```tsx
export interface EnhancedNavigateFunction {
    // Regular navigation overloads
    (to: string): void;
    (to: number): void;
    (to: string, options: { replace?: boolean; state?: any }): void;
    (to: number, options: { replace?: boolean; state?: any }): void;

    // Contextual navigation
    (contextual: ContextualNavigateOptions): void;
}
```

## Usage

```tsx
import { EnhancedNavigateFunction } from 'uxp/components';
```

