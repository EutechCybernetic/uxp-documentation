# Tab




## Definition

```tsx
export interface Tab {
    /**
     * id of the tab
     */
    id: string,
    /**
     * label of the tab
     */
    label: string | React.ReactNode,
    /**
     * tab icon
     */
    icon?: string,
    /**
     * tab content
     */
    content: React.ReactNode,
    /**
     * optional property to highlight a tab
     */
    highlight?: boolean,

    /**
     * optional prop to disabled a tab
     */
    disabled?: boolean
}
```

## Usage

```tsx
import { Tab } from 'uxp/components';
```

