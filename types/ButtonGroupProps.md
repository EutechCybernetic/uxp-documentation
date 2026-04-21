# ButtonGroupProps


Props for the ButtonGroup component.


## Definition

```tsx
interface ButtonGroupProps {
    /**
     * Array of button configurations to render.
     */
    buttons: ButtonGroupItem[];

    /**
     * ID of the currently active button.
     */
    activeId?: string;

    /**
     * Button variant applied to all buttons. Defaults to 'secondary'.
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
- [DropdownPosition](../types/DropdownPosition.md)

