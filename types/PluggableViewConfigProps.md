# PluggableViewConfigProps




## Definition

```tsx
export interface PluggableViewConfigProps {
    /**
     * @example "storybook/widget/energy-mix"
     */
    componentId: string | null;
    /**
     * @example { title: 'Energy mix', showLegend: true }
     */
    currentProps: Record<string, any>;
    /**
     * @example Log
     * ```tsx
     * onClose={() => console.log('closed')}
     * ```
     */
    onClose: () => void;
    /**
     * @example Log
     * ```tsx
     * onSave={(props) => console.log('saved', props)}
     * ```
     */
    onSave: (props: Record<string, any>) => void;
}
```

## Usage

```tsx
import { PluggableViewConfigProps } from 'uxp/components';
```

