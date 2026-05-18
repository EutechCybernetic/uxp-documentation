# InputAddonDropdown


Dropdown configuration for a prefix or suffix slot.
Always renders with the secondary background + border separator.
Selection fires through the Input's `onChange`.



## Definition

```tsx
export interface InputAddonDropdown {
    options: InputAddonOption[];
    /** Currently selected value (controlled by parent) */
    selected: string;
    /** Shown when nothing is selected */
    placeholder?: string;
    /**
     * Show a search box inside the dropdown.
     * Defaults to true when options.length > 5.
     */
    showSearch?: boolean;
}
```

## Usage

```tsx
import { InputAddonDropdown } from 'uxp/components';
```

## Examples

```tsx
tsx
prefix={{ options: CURRENCY_OPTIONS, selected: currency }}
```

## Related Types

- [InputAddonOption](../types/InputAddonOption.md)

