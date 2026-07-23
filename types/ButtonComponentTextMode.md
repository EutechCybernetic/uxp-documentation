# undefined


Casing applied to the button label.

- `sentence` (default): upshift the first character only, leaving the rest as
  authored — safe for acronyms/IDs (e.g. "API settings" stays "API settings").
- `uppercase` / `lowercase`: CSS `text-transform`.
- `none`: render the label exactly as passed.

Any other casing (title case, small-caps, …) can be done in styles via the
`uxpcore_button__text` class.


## Definition

```tsx
export type ButtonComponentTextMode = 'sentence' | 'uppercase' | 'lowercase' | 'none';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

