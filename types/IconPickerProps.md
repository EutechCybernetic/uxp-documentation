# IconPickerProps

## Definition

```tsx
interface IconPickerProps {
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
     * Disable the picker
     */
    disabled?: boolean;
    /**
     * Additional CSS class names
     */
    className?: string;
    /**
     * Additional inline styles
     */
    style?: React.CSSProperties;
    /**
     * Default view mode for the modal
     */
    defaultViewMode?: 'compact' | 'expanded';
}
```

## Usage

```tsx
import { IconPickerProps } from 'uxp/components';
```

