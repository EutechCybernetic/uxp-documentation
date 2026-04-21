# PopoverProps


Props for the Popover component


## Definition

```tsx
interface PopoverProps {
    /**
     * Title of the popover
     * Can be a string or a function that returns JSX
     * @example
     * ```tsx
     * title="Popover Title"
     * ```
     * @example
     * ```tsx
     * title={() => <strong>Bold Title</strong>}
     * ```
     */
    title: string | (() => React.ReactNode);

    /**
     * Content to show within the popover
     * Can be a string or a function that returns JSX
     * @example
     * ```tsx
     * content="Popover content here"
     * ```
     * @example
     * ```tsx
     * content={() => <div>Custom JSX content</div>}
     * ```
     */
    content: string | (() => React.ReactNode);

    /**
     * Where the popover should be positioned relative to the trigger element
     * Defaults to 'bottom'
     */
    position?: DropdownPosition;

    /**
     * Show arrow pointing to the trigger element
     * Defaults to true
     */
    showArrow?: boolean;

    /**
     * The element that triggers the popover on click
     * @example
     * ```tsx
     *  <Popover
     *      title="Details"
     *      content="More information"
     *  >
     *      <button>Click me</button>
     *  </Popover>
     * ```
     */
    children?: React.ReactNode;
}
```

## Usage

```tsx
import { PopoverProps } from 'uxp/components';
```

## Related Types

- [DropdownPosition](../types/DropdownPosition.md)

