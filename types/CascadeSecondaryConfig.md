# CascadeSecondaryConfig


Second-level select configuration. Provide exactly one data source: `options` (static)
or `loadOptions` (paginated). If both are given, `loadOptions` wins and a warning is
logged. Either way the list restarts whenever the primary changes.


## Definition

```tsx
export interface CascadeSecondaryConfig extends CascadeLevelConfig {
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
}
```

## Usage

```tsx
import { CascadeSecondaryConfig } from 'uxp/components';
```

## Related Types

- [CascadeLevelConfig](../types/CascadeLevelConfig.md)
- [CascadeDataFunction](../types/CascadeDataFunction.md)

