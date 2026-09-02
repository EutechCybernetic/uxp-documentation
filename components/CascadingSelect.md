# CascadingSelect

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-cascadingselect--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="CascadingSelect live demo"
></iframe>


A two-level cascading select. Picking a value in the primary select (re)loads the
secondary select's options — App → Role, Country → City, Site → Location and the like.

Both levels support the full Select data contract: a static array, or paginated async
loading with search, debounce and infinite scroll. The component is fully controlled:
pass `selectedPrimary` / `selectedSecondary` and update them in `onChange`, which fires
`(p, '')` on a primary pick, `(p, s)` when the pair completes, and `('', '')` on clear.
Data functions may be defined inline — re-renders never reload the secondary; only a
real primary change does.



## Installation

```tsx
import { CascadingSelect } from 'uxp/components';
```

## Signature

```tsx
const CascadingSelect: React.FunctionComponent<CascadingSelectProps>
```

## Examples

```tsx
// Static primary, service-backed paginated secondary. The loader receives the
// selected primary directly, plus args.query (the debounced search text).
const [app, setApp] = useState('');
const [role, setRole] = useState('');

<CascadingSelect
    primary={{ options: [{ label: 'System', value: 'System' }, { label: 'Lucy', value: 'Lucy' }], placeholder: 'App' }}
    secondary={{
        loadOptions: async (max, last, app, _appOption, args) => {
            const res = await context.executeService('MyApp', 'GetRoles',
                { app, q: args?.query || '', max, last }, { json: true });
            return { items: res.items, pageToken: res.pageToken };
        },
        placeholder: 'Role',
    }}
    selectedPrimary={app}
    selectedSecondary={role}
    onChange={(p, s) => { setApp(p); setRole(s); }}
/>
```

```tsx
// Static secondary as a function of the primary — no service needed.
<CascadingSelect
    primary={{ options: COUNTRIES, placeholder: 'Country' }}
    secondary={{ options: (country) => CITIES[country] || [], placeholder: 'City' }}
    selectedPrimary={country}
    selectedSecondary={city}
    onChange={(p, s) => { setCountry(p); setCity(s); }}
/>
```

```tsx
// Hydrated saved values: pass selectedLabel per level so the triggers can show
// labels for values that were saved earlier — loaded pages may not contain them.
// (Values the user picks in-session display without this.)
<CascadingSelect
    primary={{
        options: loadApps,
        selectedLabel: (app) => context.executeService('MyApp', 'GetAppDetails', { app }, { json: true }),
    }}
    secondary={{
        loadOptions: loadRoles,
        selectedLabel: (role) => context.executeService('MyApp', 'GetRoleDetails', { role }, { json: true }),
    }}
    selectedPrimary={savedApp}
    selectedSecondary={savedRole}
    onChange={(p, s) => { setSavedApp(p); setSavedRole(s); }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|primary|CascadeLevelConfig & { options: any[] \| IDataFunction }|Yes|-|-|
|secondary|CascadeLevelConfig & { /** * Static options: a plain array, or a function of the selected primary * returning the array for that primary. * * The function form is memoized on the *primary value* only — it is re-invoked * when the primary changes, never on an unrelated re-render. So if the * underlying static data is itself reactive (state, props, a fetched cache), * pass the computed array instead; the function would keep returning the * snapshot it saw at the last primary change. */ options?: any[] \| ((primary: string, primaryOption?: any) => any[]); /** * Paginated loader — search, debounce and infinite scroll, exactly like Select, * with the selected primary handed over as an explicit parameter. Its identity * does not matter: it may be redefined inline on every render. */ loadOptions?: CascadeDataFunction; }|Yes|-|-|
|selectedPrimary|string|No|-|-|
|selectedSecondary|string|No|-|-|
|onChange|(primaryValue: string, secondaryValue: string, primaryOption?: any, secondaryOption?: any) => void|Yes|-|-|
|className|string|No|-|-|
|fullWidth|boolean|No|-|-|
|unified|boolean|No|-|-|

## Related Types

- [CascadingSelectProps](../types/CascadingSelectProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [CascadeLevelConfig](../types/CascadeLevelConfig.md)
- [IDataFunction](../types/IDataFunction.md)
- [CascadeDataFunction](../types/CascadeDataFunction.md)

