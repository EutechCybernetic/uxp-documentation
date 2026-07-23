# IAddNewValues

Shared "add new" affordance configuration for dropdown-style inputs
(Select, AutoComplete, TagInput). Two scenarios:

 - **Scenario A — create-from-typed-text**: button appears only when the
   typed query has no matches. `onAddNewValue(query)` resolves to a new
   value that the component then auto-selects. Used by Select today.

 - **Scenario B — always-visible launch a form**: set `alwaysShow: true`
   and supply `onClick`. The button renders in the dropdown footer at
   all times. Clicking it fires `onClick` and the host owns the rest
   (e.g. open a slide-in form, refresh via event bus on save). The
   component does not auto-select.




## Definition

```tsx
export interface IAddNewValues {
    /** Master toggle. When false (or `addNewValues` undefined), no affordance is rendered. */
    enable: boolean;
    /** Button label. */
    title: string;
    /** Label shown while `onAddNewValue` is pending (Scenario A only). */
    loadingTitle?: string;
    /**
     * Scenario B: render the button in the dropdown footer at all times,
     * not just when the filtered list is empty. Default `false`.
     */
    alwaysShow?: boolean;
    /**
     * Scenario A: async callback receiving the user's typed query. The
     * resolved value is selected automatically by the component.
     */
    onAddNewValue?: (value: string) => Promise<any>;
    /**
     * Scenario B: synchronous fire-and-forget callback. Takes precedence
     * over `onAddNewValue` when defined. The host handles persistence and
     * subsequent selection.
     */
    onClick?: () => void;
}
```

## Usage

```tsx
import { IAddNewValues } from 'uxp/components';
```

