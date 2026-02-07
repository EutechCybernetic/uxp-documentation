# ICheckboxProps

## Definition

```tsx
interface ICheckboxProps {
    /**
     * Get or set the current state of the checkbox
     */
    checked: CheckboxState;

    /**
     * Called when the checkbox is checked or unchecked by clicking on it
     * Always returns boolean - intermediate state becomes true when clicked
     */
    onChange: (checked: boolean) => void;

    /**
     * Any additional text to show next to the checkbox
     */
    label?: string| React.ReactNode;

    /**
     * If set to 'false' the checkbox will show in an 'invalid' state
     */
    isValid?: boolean;

    /**
     * Any additional html attributes to pass to the underlying input field
     */
    inputAttr?: { [key: string]: string | boolean };

    /**
     * Determines how the checkbox looks, visually
     */
    type?: ICheckboxType;

    /**
     * Additional styles 
     */
    className?: string;

    /**
     * Additional styles to pass to the label 
     */
    labelStyles?: React.CSSProperties;

    /**
     * Tab index. default is 0
     */
    tabIndex?: number;

    /**
     * Mark as readonly 
     */
    readonly?: boolean;

    spacingMode?: SpacingMode
}
```

## Usage

```tsx
import { ICheckboxProps } from 'uxp/components';
```

## Related Types

- [CheckboxState](../types/CheckboxState.md)
- [ICheckboxType](../types/ICheckboxType.md)
- [SpacingMode](../types/SpacingMode.md)

