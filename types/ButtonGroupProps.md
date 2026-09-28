# ButtonGroupProps


Props for the ButtonGroup component.


## Definition

```tsx
interface ButtonGroupProps {
    /**
     * Array of button configurations to render.
     * @example
     * [
     *   { id: 'day', title: 'Day' },
     *   { id: 'week', title: 'Week' },
     *   { id: 'month', title: 'Month' },
     * ]
     */
    buttons: ButtonGroupItem[];

    /**
     * ID of the currently active button.
     * @example "week"
     */
    activeId?: string;

    /**
     * Button variant applied to all buttons. Defaults to 'secondary'.
     * @default 'secondary'
     */
    variant?: ButtonComponentVarient;

    /**
     * Additional CSS class names to apply to the button group container.
     */
    className?: string;

    /**
     * Custom inline styles for the button group container.
     */
    styles?: React.CSSProperties;

    /**
     * Callback triggered when a button is clicked, receiving the button's ID.
     * @example Log the id
     * ```tsx
     * onButtonClick={(buttonId) => console.log('clicked', buttonId)}
     * ```
     */
    onButtonClick?: (buttonId: string) => void;
}
```

## Usage

```tsx
import { ButtonGroupProps } from 'uxp/components';
```

## Related Types

- [ButtonGroupItem](../types/ButtonGroupItem.md)
- [ButtonComponentProps](../types/ButtonComponentProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)
- [ButtonComponentMode](../types/ButtonComponentMode.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)
- [DropdownPosition](../types/DropdownPosition.md)

