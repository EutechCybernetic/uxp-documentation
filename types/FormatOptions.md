# FormatOptions

## Definition

```tsx
export interface FormatOptions {
    /**
     * date time formats.
     * either iviva date/time formats or date-fns compatible formatting string
     */
    format?: SystemFormats | string;
    /** include seconds in the time  */
    includeSeconds?: boolean;
    /**
     * timezone convertion 
     * default will take the user's site timezone and convert date to that timezone,
     */
    timezone?: {
        /** this will ignore the default and use browser timezone */
        useBrowserTime?: boolean;
        /** if provided this will be used  */
        offset?: number;
    };
    /**
     * append the user's site timezone abbreviation (e.g. `IST`) to a datetime, as v4's `datetimeformat` did.
     * default true. Only applied to `type: 'datetime'` converted with the site timezone and the system format -
     * never with `useBrowserTime`, a custom `offset` or a custom `format` string.
     */
    includeTimezone?: boolean;
}
```

## Usage

```tsx
import { FormatOptions } from 'uxp/components';
```

## Related Types

- [SystemFormats](../types/SystemFormats.md)
- [SystemDateFormat](../types/SystemDateFormat.md)
- [SystemTimeFormat](../types/SystemTimeFormat.md)

