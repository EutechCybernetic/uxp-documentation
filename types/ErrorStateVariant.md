# undefined


Tone of an error state. Deliberately narrower than the button variant union —
an error state is either a failure (`error`) or a caution (`warning`).

- `error`: driven by the `--dangerButtonBGColor` / `TextColor` / `BorderColor` trio.
- `warning`: driven by the `--warningButton*` trio.


## Definition

```tsx
export type ErrorStateVariant = 'error' | 'warning';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

