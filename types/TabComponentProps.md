# TabComponentProps








```tsx
interface TabComponentProps {
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
     * tab component styles 
     */
    styles?: TabComponentStyles
}
```

## Usage



```tsx
import {TabComponentProps} from 'uxp/components';
```

