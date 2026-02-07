# ISearchBoxProps

## Definition

```tsx
interface ISearchBoxProps {
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
     * position of search box
     */
    position?: IPosition,
    /**
     * placeholder value
     */
    placeholder?: string
    /**
     * input will be auto focused if true
     */
    autoFocus?: boolean

    spacingMode?: SpacingMode
}
```

## Usage

```tsx
import { ISearchBoxProps } from 'uxp/components';
```

## Related Types

- [IPosition](../types/IPosition.md)
- [SpacingMode](../types/SpacingMode.md)

