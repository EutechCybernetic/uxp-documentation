# UXPGlobalDashboardSettings

## Definition

```tsx
export interface UXPGlobalDashboardSettings {
    breakpoints?: Array<{
        key: string;
        enabled: boolean;
        width: number;
        columns?: number;
    }>;
    defaults?: {
        showGridlines?: boolean;
        showEmptyPlaceholder?: boolean;
        margin?: number;
        containerPadding?: number;
        allowFreePositioning?: boolean;
    };
}
```

## Usage

```tsx
import { UXPGlobalDashboardSettings } from 'uxp/components';
```

