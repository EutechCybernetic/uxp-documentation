# IRadioGroupProps

## Definition

```tsx
interface IRadioGroupProps extends InputSizeProps, InputStateProps {
    /**
     * The choices. Exactly one can be selected at a time
     */
    options: IRadioOption[];

    /**
     * The value of the selected option
     * @example "one"
     */
    selected: string | number | null;

    /**
     * Called with the value of the option the user picks
     */
    onChange: (value: string | number) => void;

    /**
     * Lay the options out one under the other, or side by side
     * @default "vertical"
     */
    direction?: "vertical" | "horizontal";

    /**
     * The name shared by the underlying radio inputs. A unique one is generated when omitted
     */
    name?: string;

    /**
     * Additional styles
     */
    className?: string;
}
```

## Usage

```tsx
import { IRadioGroupProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IRadioOption](../types/IRadioOption.md)

