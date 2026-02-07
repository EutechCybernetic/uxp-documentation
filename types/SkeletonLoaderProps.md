# SkeletonLoaderProps


Props for the SkeletonLoader component


## Definition

```tsx
export interface SkeletonLoaderProps {
    /**
     * Width of the skeleton loader. Can be a CSS unit (e.g., '100%', '200px').
     * Defaults to '100%'.
     */
    width?: string;

    /**
     * Height of the skeleton loader. Can be a CSS unit (e.g., '1rem', '20px').
     * Defaults to '1rem'.
     */
    height?: string;

    /**
     * Additional CSS styles to apply to the skeleton loader.
     */
    additionalStyle?: React.CSSProperties;

    /**
     * Additional class names to apply to the skeleton loader.
     */
    className?: string;
}
```

## Usage

```tsx
import { SkeletonLoaderProps } from 'uxp/components';
```

