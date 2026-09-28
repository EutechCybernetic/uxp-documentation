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
    /**
     * First-level select — see `CascadePrimaryConfig`.
     * @example
     * {
     *   options: [
     *     { label: 'Level 1', value: 'L1' },
     *     { label: 'Level 2', value: 'L2' },
     *   ],
     *   placeholder: 'Floor',
     * }
     */
    primary: CascadePrimaryConfig;
    /**
     * Second-level select — see `CascadeSecondaryConfig`.
     * @example
     * {
     *   options: (primary) => primary === 'L1'
     *     ? [{ label: 'Lobby', value: 'L1-LOBBY' }, { label: 'Plant room', value: 'L1-PLANT' }]
     *     : [{ label: 'Meeting room A', value: 'L2-MRA' }],
     *   placeholder: 'Room',
     * }
     */
    secondary: CascadeSecondaryConfig;

    /**
     * Currently selected primary value ('' / undefined for none)
     * @example "L1"
     */
    selectedPrimary?: string;
    /** Currently selected secondary value ('' / undefined for none) */
    selectedSecondary?: string;

    /**
     * Fired on any selection change at either level. A primary change always arrives
     * with secondaryValue = '' (the secondary selection is cleared). Clearing the
     * primary fires ('', ''). Option objects are provided when known — they are not
     * known for hydrated saved values until re-selected.
     * @example Log
     * ```tsx
     * onChange={(primaryValue, secondaryValue) => console.log(primaryValue, secondaryValue)}
     * ```
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

