# IThemeChangerProps









```tsx
interface IThemeChangerProps {
    /**
     * option to pass current theme
     */
    themeName?: string,
    /**
     * 
     * callback on theme change
     */
    onChangeTheme?: (themeName: string) => void
    /**
     * pass a element id to apply theme changes to that element and children 
     *
     */
    rootElementId?: string
}
```

## Usage



```tsx
import {IThemeChangerProps} from 'uxp/components';
```

