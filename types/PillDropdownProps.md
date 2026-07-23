# PillDropdownProps


Props for the standalone PillDropdown panel.


## Definition

```tsx
export interface PillDropdownProps {
    /** Available options grouped by sections */
    contextDataSections: ContextDatasection[];
    /** Called when an option is clicked */
    onSelect: (value: string, field: PillOption) => void;
    /** Configuration for different pill types */
    pillConfiguration?: PillConfiguration;
    /** Custom function to split pill values */
    pillValuesSplitFn?: (value: string) => string[];
    /** Regex used for pill rendering */
    expressionMatcher?: RegExp;
    /** Additional CSS classes */
    className?: string;
}
```

## Usage

```tsx
import { PillDropdownProps } from 'uxp/components';
```

## Related Types

- [ContextDatasection](../types/ContextDatasection.md)
- [PillOption](../types/PillOption.md)
- [PillConfiguration](../types/PillConfiguration.md)
- [PillTypeConfig](../types/PillTypeConfig.md)

