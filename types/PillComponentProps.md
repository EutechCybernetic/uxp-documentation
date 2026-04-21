# PillComponentProps

Props for individual Pill component


## Definition

```tsx
interface PillComponentProps {
    /** The pill's value */
    value: string;
    /** All available field options for context */
    allFields: PillOption[]
    /** Regex to match pill expressions */
    expressionMatcher: RegExp;
    /** Configuration for pill rendering */
    pillConfiguration?: PillConfiguration;
    /** Whether pill can be dragged */
    draggable?: boolean;
    /** Additional CSS classes */
    className?: string;
    /** Click handler */
    onClick?: () => void;
    /** Custom function to split pill values */
    pillValuesSplitFn?: (value: string) => string[];
    /** Index to determine pill type */
    typeIndex?: number
    /** Whether to show formatter controls */
    showFomatters?: boolean,
    /** Callback when formatters change */
    onChangeFormatters?: (value: string) => void
    /** Callback when formatter UI is clicked */
    onClickFormatters?: () => void
    /** Whether the input is disabled */
    disabled?: boolean
    /** Whether the input is readonly */
    readOnly?: boolean
}
```

## Usage

```tsx
import { PillComponentProps } from 'uxp/components';
```

## Related Types

- [PillOption](../types/PillOption.md)
- [PillConfiguration](../types/PillConfiguration.md)
- [PillTypeConfig](../types/PillTypeConfig.md)

