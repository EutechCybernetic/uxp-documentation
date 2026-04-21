# TimeRangeSliderPickerProps

## Definition

```tsx
interface TimeRangeSliderPickerProps {
    title?: string;
    /**
     * Start time. Either a Date object or a time string
     */
    startTime: string | Date;
    /**
     * End time. Either a Date object or a time string
     */
    endTime: string | Date;
    /**
     * Callback that gets executed whenever time range is changed
     */
    onChange: (start: Date, end: Date) => void;
    /**
     * Step interval in minutes (default: 15)
     */
    step?: number;
    /**
     * Disable the slider
     */
    disabled?: boolean;
}
```

## Usage

```tsx
import { TimeRangeSliderPickerProps } from 'uxp/components';
```

