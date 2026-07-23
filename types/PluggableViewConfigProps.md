# PluggableViewConfigProps




## Definition

```tsx
export interface PluggableViewConfigProps {
    componentId: string | null;
    currentProps: Record<string, any>;
    onClose: () => void;
    onSave: (props: Record<string, any>) => void;
}
```

## Usage

```tsx
import { PluggableViewConfigProps } from 'uxp/components';
```

