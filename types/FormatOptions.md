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

