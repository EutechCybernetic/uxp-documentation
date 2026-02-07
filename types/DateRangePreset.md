# DateRangePreset

## Definition

```tsx
interface DateRangePreset {
    label: string,
    startDate: string | RelativeDate | Date // string could be a date string or relative date like 0d, 1d, -7d, etc  
    endDate: string | RelativeDate | Date // string could be a date string or relative date like 0d, 1d, -7d, etc  
}
```

## Usage

```tsx
import { DateRangePreset } from 'uxp/components';
```

## Related Types

- [RelativeDate](../types/RelativeDate.md)

