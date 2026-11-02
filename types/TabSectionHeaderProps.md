# TabSectionHeaderProps

Props for the TabSectionHeader component


## Definition

```tsx
export interface TabSectionHeaderProps {
    /**
     * Title of the tab's content
     * @example "API keys"
     */
    title?: ReactNode
    /** Buttons for the tab (e.g. Generate, Edit) */
    actions?: ReactNode
    /**
     * A section inside a tab (a tab with several sections): the title and its buttons stay with
     * the section on every screen. On phones the buttons show as icons.
     */
    section?: boolean
    /** Additional class name */
    className?: string
}
```

## Usage

```tsx
import { TabSectionHeaderProps } from 'uxp/components';
```

