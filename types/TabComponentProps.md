# TabComponentProps




## Definition

```tsx
export interface TabComponentProps {
    /**
     * tabs 
     */
    tabs: Tab[]
    /**
     * selected tab id
     */
    selected: string,
    /**
     * on change tab 
     */
    onChangeTab: (tab: string) => void,

    /**
     * direction of tabs 
     */
    direction?: 'vertical' | 'horizontal',

    /**
     * position of tabs 
     */
    position?: 'top' | 'bottom' | 'left' | 'right'

    /**
     * tab component styles
     */
    styles?: TabComponentStyles,
    /**
     * additional classname
     */
    className?: string,

    /**
     * Optional content rendered on the far (inline-end) side of the tab header row,
     * e.g. an action button or a dropdown aligned opposite the tab labels.
     */
    rightContent?: React.ReactNode
}
```

## Usage

```tsx
import { TabComponentProps } from 'uxp/components';
```

## Related Types

- [Tab](../types/Tab.md)
- [TabComponentStyles](../types/TabComponentStyles.md)

