# ITimePickerProps

## Definition

```tsx
interface ITimePickerProps extends InputSizeProps, InputStateProps {
    /**
    * The title
    */
    title?: string
    /**
     * The currently selected time. Either a Date object or an time string (Ex: 01:10:00 pm)
     */
    time: string | Date,
    /**
    * Callback that gets executed whenever a time is selected/changed in the time picker
    */
    onChange: (date: Date) => void,
    /**
    * Set to true to prevent a user from typing in a time
    */
    disableInput?: boolean,
    /**
     * hide the clock icon
     */
    hideLabels?: boolean,

    /**
     * Additional class name for the dropdown container
     */
    dropdownClassname?: string

    /**
     * Maximum width for the dropdown content
     */
    dropdownMaxWidth?: number | string
}
```

## Usage

```tsx
import { ITimePickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

