# CascadeLevelConfig


Per-level configuration for CascadingSelect — a curated subset of the Select props.
Every field maps 1:1 onto the underlying Select prop of the same name.


## Definition

```tsx
export interface CascadeLevelConfig {
    /** Field name to display as the label. Default: 'label' */
    labelField?: string;
    /** Field name to use as the value. Default: 'value' */
    valueField?: string;
    /** Field name to use as an icon */
    iconField?: string;
    /** Text to show when no value is selected */
    placeholder?: string;
    /**
     * When loading options dynamically the loaded pages may not contain the currently
     * selected (saved) value. Pass the label directly, or a resolver that receives the
     * selected value and returns the full option. Same contract as Select's selectedLabel.
     */
    selectedLabel?: string | ((selected: string) => Promise<any>);
    /** Custom renderer for each option in this level's dropdown */
    renderOption?: (item: any, key: number, isHighlighted?: boolean, isSelected?: boolean) => JSX.Element;
    /** Page size when this level loads paginated data. Default: 6 (Select's default) */
    pageSize?: number;
    /** Min width of this level's dropdown */
    dropdownMinWidth?: number | string;
    /** Max width of this level's dropdown */
    dropdownMaxWidth?: number | string;
    /** Show the end-of-content message when the paginated list is exhausted */
    showEndOfContent?: boolean;
}
```

## Usage

```tsx
import { CascadeLevelConfig } from 'uxp/components';
```

