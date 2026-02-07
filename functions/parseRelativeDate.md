# parseRelativeDate


Parses a relative date string into an actual Date object



## Installation

```tsx
import { parseRelativeDate } from 'uxp/components';
```

## Signature

```tsx
function parseRelativeDate(relativeDate: string, baseDate?: any): Date
```

## Examples

```tsx
const date = parseRelativeDate('-3d'); // 3 days ago
const startDate = parseRelativeDate('0d|start'); // start of today
```

