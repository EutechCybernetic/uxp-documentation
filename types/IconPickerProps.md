# IconPickerProps

## Definition

```tsx
interface IconPickerProps extends InputSizeProps, InputStateProps {
    /**
     * The icon value in new format (e.g., 'fas:bell') or legacy format (e.g., 'addressBook')
     */
    value?: string;
    /**
     * Callback when icon is selected. Returns new format: 'fas:bell'
     */
    onChange: (value: string) => void;
    /**
     * Optional label for accessibility
     */
    label?: string;
    /**
     * Additional CSS class names
     */
    className?: string;
    /**
     * Default view mode for the modal
     */
    defaultViewMode?: 'compact' | 'expanded';
    /**
     * Hide the icon code label, showing only the icon
     */
    hideLabel?: boolean;
    /**
     * Use compact square mode (3rem x 3rem). Useful for non-form contexts.
     * Default is false (standard input height with icon + code)
     */
    compactMode?: boolean;
    /**
     * Placeholder text when no icon is selected
     */
    placeholder?: string;
}
```

## Usage

```tsx
import { IconPickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

