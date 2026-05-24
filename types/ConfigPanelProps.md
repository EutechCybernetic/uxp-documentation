# ConfigPanelProps

## Definition

```tsx
export interface ConfigPanelProps {
    configs: { [key: string]: any };
    onSubmit: (data: { [key: string]: any }) => void;
    onCancel?: () => void;
    uxpContext?: any;
    instanceId?: string;
}
```

## Usage

```tsx
import { ConfigPanelProps } from 'uxp/components';
```

