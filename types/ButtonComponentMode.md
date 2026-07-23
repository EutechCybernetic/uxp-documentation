# undefined


Rendering mode for icon-only buttons.

- `transparent` (default): no background/border at rest; the variant's BG
  token becomes the icon color. Hover/active restore the variant's
  hover/active fill.
- `filled`: classic filled button look.

Ignored when the button is not icon-only.


## Definition

```tsx
export type ButtonComponentMode = 'transparent' | 'filled';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

