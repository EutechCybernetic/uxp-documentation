# CascadingSelectProps


A two-level cascading select. Selecting a value in the primary select triggers
(re)loading of the secondary select's options.

Both levels support the full Select data contract: a static array of items, or a
paginated async data function (search, debounce, infinite scroll). The secondary
splits the two into separate props — `options` for static data, `loadOptions` for a
paginated `CascadeDataFunction` that receives the selected primary directly.

Fully controlled: pass `selectedPrimary` / `selectedSecondary` and handle `onChange`.


## Definition

```tsx
export interface CascadingSelectProps extends InputStateProps {
    /** First-level select — see `CascadePrimaryConfig`. */
    primary: CascadePrimaryConfig;
    /** Second-level select — see `CascadeSecondaryConfig`. */
    secondary: CascadeSecondaryConfig;

    /** Currently selected primary value ('' / undefined for none) */
    selectedPrimary?: string;
    /** Currently selected secondary value ('' / undefined for none) */
    selectedSecondary?: string;

    /**
     * Fired on any selection change at either level. A primary change always arrives
     * with secondaryValue = '' (the secondary selection is cleared). Clearing the
     * primary fires ('', ''). Option objects are provided when known — they are not
     * known for hydrated saved values until re-selected.
     */
    onChange: (primaryValue: string, secondaryValue: string, primaryOption?: any, secondaryOption?: any) => void;

    /** Any extra css classes */
    className?: string;
    /** Stretch both selects to 100% of the container */
    fullWidth?: boolean;
    /** Render as a single unified input with one border and a center divider */
    unified?: boolean;
}
```

## Usage

```tsx
import { CascadingSelectProps } from 'uxp/components';
```

## Related Types

- [InputStateProps](../types/InputStateProps.md)
- [CascadePrimaryConfig](../types/CascadePrimaryConfig.md)
- [CascadeLevelConfig](../types/CascadeLevelConfig.md)
- [IDataFunction](../types/IDataFunction.md)
- [CascadeSecondaryConfig](../types/CascadeSecondaryConfig.md)
- [CascadeDataFunction](../types/CascadeDataFunction.md)

