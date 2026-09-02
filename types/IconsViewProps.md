# IconsViewProps

## Definition

```tsx
interface IconsViewProps {
    /**
     * Whether the view is visible. Going false resets search, the preview and
     * the revealed batch count.
     */
    show: boolean;

    /**
     * What a click on a variant card means — the same contract the library and
     * gallery grids use. The outer icon grid never calls it: an icon name is not
     * a value, so it only opens the preview.
     */
    onPick?: (iconString: string) => void;

    /**
     * Multi-select support — return true if the value is in the selection. A
     * card counts as selected when any of its variants is.
     */
    isSelected?: (value: string) => boolean;

    /**
     * Supplied only where a click on a variant selects instead of previewing
     * (multi-select) — it puts the hover expand button on the variant cards.
     */
    onPreview?: (iconString: string) => void;

    /**
     * Fired with the icon string the preview column currently resolves to — on
     * every icon / package / weight change, and `''` when it closes. The host
     * lays the dialog out from this.
     */
    onPendingChange?: (iconString: string) => void;

    /**
     * Whether the variant the preview column currently resolves to is in the
     * selection — draws the preview's check badge.
     */
    previewSelected?: boolean;

    /**
     * Supplied in multiple mode only — makes the large preview clickable to
     * toggle its variant, so it agrees with the variant cards beneath it.
     */
    onPreviewToggle?: () => void;

    /**
     * The value the field currently holds. Its icon is badged in the grid, so
     * reopening the picker shows what is already chosen.
     */
    currentValue?: string;
}
```

## Usage

```tsx
import { IconsViewProps } from 'uxp/components';
```

