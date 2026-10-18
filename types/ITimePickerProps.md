# ITimePickerProps

## Definition

```tsx
interface ITimePickerProps extends InputSizeProps, InputStateProps {
    /**
    * The title
    */
    title?: string
    /**
     * The currently selected time. Either a Date object or an time string (Ex: 01:10:00 pm).
     * With no value, the picker shows today at 00:00. Done saves it only with `saveDefaultOnDone`.
     * @example "09:30"
     */
    time: string | Date,
    /**
     * When the field is empty, Done saves the time the clock shows (today 00:00). Off by default: Done only closes.
     * Escape or a click outside never saves.
     * @default false
     * @example true
     */
    saveDefaultOnDone?: boolean,
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

    /**
     * When provided, a clear (×) button is shown whenever a time is selected.
     * Clicking it calls this function — the parent is responsible for clearing the value.
     */
    onClear?: () => void
}
```

## Usage

```tsx
import { ITimePickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

