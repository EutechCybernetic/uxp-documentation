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
    /**
     * When true, the panel grows to fit its content — its internal `max-height`
     * and scroll are removed and its own outer padding is zeroed, so the consumer's
     * container owns both scrolling and spacing. Default `false` (self-contained
     * scrolling panel, unchanged behaviour).
     */
    autoHeight?: boolean;
    /**
     * When `false`, the per-section header labels are not rendered. Default `true`.
     */
    showSectionHeaders?: boolean;
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

