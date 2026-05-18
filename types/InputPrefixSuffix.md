# undefined


Union type for the `prefix` and `suffix` props.

- `React.ReactNode` — rendered as-is, transparent slot, no separator
- `InputPrefixConfig` — `{ value, showSeparator? }` — opt-in separator
- `InputAddonDropdown` — `{ options, selected }` — selectable dropdown, always has separator


## Definition

```tsx
export type InputPrefixSuffix = React.ReactNode | InputPrefixConfig | InputAddonDropdown;
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

