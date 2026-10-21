# undefined


Tone of an error state. Deliberately narrower than the button variant union —
an error state is a failure (`error`), a caution (`warning`) or a notice (`info`).

- `error`: driven by the `--dangerButtonBGColor` / `TextColor` / `BorderColor` trio.
- `warning`: driven by the `--warningButton*` trio.
- `info`: driven by the `--infoButton*` trio.


## Definition

```tsx
export type ErrorStateVariant = 'error' | 'warning' | 'info';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

