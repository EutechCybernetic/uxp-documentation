# IThemeChangerProps




## Definition

```tsx
interface IThemeChangerProps {
    /**
     * The currently selected theme name.
     * If not provided, the context's current theme is used.
     */
    themeName?: string;

    /**
     * Callback that is executed whenever a new theme is selected.
     * themeName - The newly selected theme
     */
    onChangeTheme?: (themeName: string) => void;

    /**
     * The ID of the root element where theme variables should be applied.
     * Defaults to the global root if not provided.
     */
    rootElementId?: string;

    /**
     * The dropdown menu position relative to the trigger button.
     * Defaults to `'bottom-right'`.
     */
    position?: DropdownPosition;
}
```

## Usage

```tsx
import { IThemeChangerProps } from 'uxp/components';
```

## Related Types

- [DropdownPosition](../types/DropdownPosition.md)

