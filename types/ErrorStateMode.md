# undefined


How much room the error state takes up. This is a *maximum*: the component
measures its container and degrades (`default` → `inline` → `indicator`) when
there is not enough room. It never upgrades — an explicit `inline` stays
inline in a large container.

- `default`: centred frosted-glass card — full page/panel treatment.
- `inline`: compact left-aligned row — for gated sections, tabs and tiles.
- `indicator`: icon only; the message opens in a dropdown on click.


## Definition

```tsx
export type ErrorStateMode = 'default' | 'inline' | 'indicator';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

