# ISidebarProps








```tsx
interface ISidebarProps {
    items: ISidebarLink[]
    onClick: (linkItem: ISidebarLink) => void,
    userGroup: string
    env: string,
    canInstallFromMarketplace?: boolean,
    expanded: boolean,
    onToggleSidebar: () => void,
    onHoverSidebar: (expanded: boolean) => void,
    className?: string
    logo?: string,
    collapsedLogo?: string,
    renderLogoWithNewStyles?: boolean,
    styles?: React.CSSProperties,
    loading?: boolean
}
```

## Usage



```tsx
import {ISidebarProps} from 'uxp/components';
```

