# undefined


Type for the button's visual variant.

- `primary` / `secondary` / `danger` / `warning` / `info` / `success`:
  filled variants driven by the matching `--<variant>ButtonBGColor` /
  `TextColor` / `BorderColor` theme tokens.
- `link`: flat text-only style — no border, transparent background,
  text in `var(--accentColor)`. Use for inline "add new" / launch-form
  affordances inside dropdowns and lists.


## Definition

```tsx
export type ButtonComponentVarient = 'primary' | 'secondary' | 'danger' | 'warning' | 'info' | 'success' | 'link';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

