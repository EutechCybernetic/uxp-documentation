# SearchBoxProps

## Definition

```tsx
interface SearchBoxProps extends InputSizeProps, InputStateProps {
    /**
     * Default value
     */
    value: string,
    /**
    * This function is called whenever the text changes. The new text value is passed as a parameter
    */
    onChange: (newValue: string) => void,
    /**
     * Any additional class names to be included for the input field
     */
    className?: string,
    /**
     * show only a icon button when true. When click on the button it will show the actual search box
     */
    collapsed?: boolean,
    /**
     * @deprecated
     * position of search box
     */
    position?: any,
    /**
     * placeholder value
     */
    placeholder?: string
    /**
     * input will be auto focused if true
     */
    autoFocus?: boolean
}
```

## Usage

```tsx
import { SearchBoxProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

