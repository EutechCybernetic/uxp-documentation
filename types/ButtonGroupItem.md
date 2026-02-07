# ButtonGroupItem


Configuration for a button in the ButtonGroup, extending ButtonComponentProps.


## Definition

```tsx
interface ButtonGroupItem extends Omit<ButtonComponentProps, 'variant' | 'active'> {
    /**
     * Unique identifier for the button.
     */
    id: string;

    /**
     * Optional dropdown content for the button, making it a dropdown button.
     */
    dropdownContent?: React.ReactNode;

    /**
     * Position of the dropdown relative to the button.
     */
    dropdownPosition?: DropdownPosition;

    /**
     * If true, shows an anchor connecting the dropdown to the button.
     */
    showAnchor?: boolean;
}
```

## Usage

```tsx
import { ButtonGroupItem } from 'uxp/components';
```

## Related Types

- [ButtonComponentProps](../types/ButtonComponentProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [DropdownPosition](../types/DropdownPosition.md)

