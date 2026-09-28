# useFormatters


Hook for formatting dates, times, and datetimes with timezone conversion support.

This hook returns a `formatDate` function that you can use to format values
depending on the `type` you provide (`date`, `time`, or `datetime`).

It automatically applies:
- System-defined formats (from context) OR your custom format strings.
- Timezone conversion (site, browser, or custom offset).
- Optional seconds in time outputs.
- The site timezone abbreviation after datetimes (v4 parity; opt out with `includeTimezone: false`).



## Installation

```tsx
import { useFormatters } from 'uxp/components';
```

## Signature

```tsx
function useFormatters(): { formatDate: (date: string | Date, options: ExtendedFormatOptions) => string; }
```

## Examples

```tsx
tsx
// Import the hook and get the formatDate function
import { useFormatters } from '@/hooks/useFormatters';

const { formatDate } = useFormatters();
const now = new Date();
```

```tsx
tsx
// Format as date only
const date = formatDate(now, { type: 'date' });
```

```tsx
tsx
// Format as time only
const time = formatDate(now, { type: 'time' });
```

```tsx
tsx
// Format as date + time, with the site timezone abbreviation appended (e.g. "2026/9/23 09:23 (IST)")
const dateTime = formatDate(now, { type: 'datetime' });
```

```tsx
tsx
// Date + time without the timezone abbreviation
const noZone = formatDate(now, { type: 'datetime', includeTimezone: false });
```

```tsx
tsx
// Custom format string (date-fns format)
const custom = formatDate(now, { type: 'datetime', format: 'EEEE, MMMM do yyyy HH:mm' });
```

```tsx
tsx
// Include seconds in time format
const withSeconds = formatDate(now, { type: 'time', includeSeconds: true });
```

```tsx
tsx
// Convert using browser timezone
const browserTime = formatDate(now, {
  type: 'datetime',
  timezone: { useBrowserTime: true }
});
```

```tsx
tsx
// Convert using a specific offset (e.g., UTC+5:30 = 19800 seconds)
const specificOffset = formatDate(now, {
  type: 'datetime',
  timezone: { offset: 19800 }
});
```

