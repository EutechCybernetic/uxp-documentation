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
     * First-level select. `options` follows the full Select contract: a static array,
     * or a paginated data function `(max, lastPageToken, args) => Promise<{items, pageToken}>`
     * (args carries `query` — the debounced search text). A function must be referentially
     * stable (wrap in useCallback), same as Select.
     */
    primary: CascadeLevelConfig & { options: any[] | IDataFunction };
    /**
     * Second-level select. Provide exactly one data source: `options` (static) or
     * `loadOptions` (paginated). If both are given, `loadOptions` wins and a warning
     * is logged. Either way the list restarts whenever the primary changes.
     */
    secondary: CascadeLevelConfig & {
        /**
         * Static options: a plain array, or a function of the selected primary
         * returning the array for that primary.
         *
         * The function form is memoized on the *primary value* only — it is re-invoked
         * when the primary changes, never on an unrelated re-render. So if the
         * underlying static data is itself reactive (state, props, a fetched cache),
         * pass the computed array instead; the function would keep returning the
         * snapshot it saw at the last primary change.
         */
        options?: any[] | ((primary: string, primaryOption?: any) => any[]);
        /**
         * Paginated loader — search, debounce and infinite scroll, exactly like Select,
         * with the selected primary handed over as an explicit parameter. Its identity
         * does not matter: it may be redefined inline on every render.
         */
        loadOptions?: CascadeDataFunction;
    };

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
- [CascadeLevelConfig](../types/CascadeLevelConfig.md)
- [IDataFunction](../types/IDataFunction.md)
- [CascadeDataFunction](../types/CascadeDataFunction.md)

