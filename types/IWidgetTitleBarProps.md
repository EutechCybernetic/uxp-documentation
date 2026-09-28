# IWidgetTitleBarProps

## Definition

```tsx
interface IWidgetTitleBarProps {
    /**
     * The title to show for the widget
     * @example "Energy today"
     */
    title: string;

    /**
     * The url for an icon to be shown next to the title on the top left corner.
     */
    icon?: string;
    className?: string
    /**
     * @example Action button
     * ```tsx
     * <Button title="Refresh" icon="fas rotate" />
     * ```
     */
    children?: React.ReactNode
}
```

## Usage

```tsx
import { IWidgetTitleBarProps } from 'uxp/components';
```

