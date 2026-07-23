# PillInputProps


Props for the main PillInput component


## Definition

```tsx
export interface PillInputProps extends InputSizeProps, InputStateProps {
    /** Current input value */
    value: string;
    /** Callback when value changes */
    onChange: (value: string) => void;
    /** Placeholder text for empty input */
    placeholder?: string;
    /** Available options grouped by sections */
    contextDataSections: ContextDatasection[]
    /** Configuration for different pill types */
    pillConfiguration?: PillConfiguration;
    /** Additional CSS classes */
    className?: string;
    /** Focus event handler */
    onFocus?: (event: Event) => void;
    /** Blur event handler */
    onBlur?: () => void;
    /** Title for the options panel */
    panelTitle?: string;
    /** Index in split value to determine pill type */
    typeIndex?: number,
    /**
     * Built-in expression syntax — `'uxp-expression'` for `{$.param}`, `'iviva-expression'`
     * for `#{param}`. Also supplies a default `placeholder`. An explicit `expressionMatcher`
     * takes precedence. Omit both to keep the historical `{...}` behaviour.
     */
    expressionPreset?: ExpressionPreset;
    /** Regex to match expressions that become pills. Overrides `expressionPreset`. */
    expressionMatcher?: RegExp;
    /** Custom function to split pill values */
    pillValuesSplitFn?: (value: string) => string[];
    /**
     * When provided, a clear (×) button is shown whenever there is a value.
     * Clicking it calls this function — the parent is responsible for clearing the value.
     * If not provided, the clear button calls onChange('') internally.
     */
    onClear?: () => void;
    /**
     * @deprecated
     * Position of the options panel relative to input
     * */
    panelPosition?: 'left' | 'right'
    /** Show/hide formatter controls on pills (default: true) */
    showFormatters?: boolean;
    /** Show raw value below the editor for debugging */
    inspect?: boolean;
    /** Allow multiple lines and soft-wrap long text. When false (default), newlines are blocked. */
    multiline?: boolean;
    /** Multiline only: minimum visible rows. The editor starts this tall and grows. Default 3. */
    rows?: number;
    /** Multiline only: cap the height at this many rows, then scroll. Unbounded if omitted. */
    maxRows?: number;
}
```

## Usage

```tsx
import { PillInputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [ContextDatasection](../types/ContextDatasection.md)
- [PillOption](../types/PillOption.md)
- [PillConfiguration](../types/PillConfiguration.md)
- [PillTypeConfig](../types/PillTypeConfig.md)
- [ExpressionPreset](../types/ExpressionPreset.md)

