# getExpressionAffixes


The literal prefix/suffix wrapping a pill's captured value, read off the matcher
itself so the syntax has a single source of truth.

`/{(.*?)}/` → `{` `}` ・ `/#\{([^}]+)\}/` → `#{` `}` ・ `/\{\{(.*?)\}\}/` → `{{` `}}`

Falls back to `{` `}` when the text around the capture group isn't a plain literal
(lookarounds, non-capturing groups, a `(` inside a character class). The fallback is
decided by round-tripping a probe through the matcher, not by inspecting the source —
corrupting a caller's expressions is far worse than ignoring an exotic matcher.


## Installation

```tsx
import { getExpressionAffixes } from 'uxp/components';
```

## Signature

```tsx
function getExpressionAffixes(matcher: RegExp): { prefix: string; suffix: string }
```

