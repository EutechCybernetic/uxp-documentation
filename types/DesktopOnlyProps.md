# DesktopOnlyProps


Props for the DesktopOnly component


## Definition

```tsx
export interface DesktopOnlyProps {
    /** The editor or part that needs a larger screen */
    children?: React.ReactNode;
    /**
     * @deprecated No button is shown any more: on phones the notice is only a message, and the
     * phone's own Back (or the menu) leaves it. Kept so existing code still compiles.
     */
    onBack?: () => void;
}
```

## Usage

```tsx
import { DesktopOnlyProps } from 'uxp/components';
```

