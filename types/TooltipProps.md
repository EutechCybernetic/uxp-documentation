# TooltipProps


Props for the Tooltip component


## Definition

```tsx
interface TooltipProps {
    /**
     * The content to show inside the tooltip
     * Can be a string or a function that returns JSX
     * @example
     * ```tsx
     * <Tooltip content="This is a tooltip" />
     * ```
     * @example
     * ```tsx
     * <Tooltip content={() => <div>Custom JSX content</div>} />
     * ```
     */
    content: string | (() => React.ReactNode);

    /**
     * Where the tooltip should be placed relative to the trigger element
     * Defaults to 'top'
     */
    position?: TooltipPosition;

    /**
     * Show arrow pointing to the trigger element
     * Defaults to true
     */
    showArrow?: boolean;

    /**
     * The element that triggers the tooltip on hover
     * @example
     * ```tsx
     *  <Tooltip content="This is a tooltip">
     *      <button>Hover me</button>
     *  </Tooltip>
     * ```
     */
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { TooltipProps } from 'uxp/components';
```

## Related Types

- [TooltipPosition](../types/TooltipPosition.md)

