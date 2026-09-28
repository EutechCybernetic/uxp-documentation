# ConfigurationViewHeaderProps


Props for the ConfigurationViewHeader component.


## Definition

```tsx
export interface ConfigurationViewHeaderProps {
    /**
     * Title text or any React node
     * @example "General settings"
     */
    title: string | React.ReactNode;
    /**
     * Action buttons rendered on the right side
     * @example Save button
     * ```tsx
     * actions={<Button title="Save" icon="fas save" />}
     * ```
     */
    actions?: React.ReactNode;
    /**
     * Visual variant:
     * - `'section'` (default) — smaller section-level header inside content area
     * - `'main'` — full page-level header with same styling as ConfigurationView's outer title bar
     */
    variant?: 'section' | 'main';
}
```

## Usage

```tsx
import { ConfigurationViewHeaderProps } from 'uxp/components';
```

