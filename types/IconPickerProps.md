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
     * @deprecated No longer read — the icons preview always shows every
     * variant. Kept so existing callers still compile.
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

    /**
     * When provided, a clear (×) button is shown whenever an icon is selected.
     * Clicking it calls this function — the parent is responsible for clearing the value.
     */
    onClear?: () => void;

    /**
     * Turn individual sources on/off. All of icons, library, upload and URL are
     * on by default — an icon field accepts an image just as well as a glyph.
     */
    sources?: Partial<Record<MediaPickerSource, boolean>>;

    /**
     * FileInput-style MIME/extension restrictions for uploads.
     * Defaults to images only.
     */
    allowedTypes?: string[];

    /**
     * Source the dialog opens on.
     * @default 'icons'
     */
    defaultSource?: MediaPickerSource;
}
```

## Usage

```tsx
import { IconPickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [MediaPickerSource](../types/MediaPickerSource.md)

