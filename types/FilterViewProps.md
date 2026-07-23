# FilterViewProps


Props for the FilterView component


## Definition

```tsx
interface FilterViewProps {
    /**
     * Whether the filter panel is open
     */
    isOpen: boolean,

    /**
     * Callback to toggle the filter panel open/closed state
     */
    onToggle: () => void,

    /**
     * Currently applied filters
     */
    appliedFilters: Filters,

    /**
     * Callback that gets executed whenever filters are changed
     */
    onChange: (filters: Filters) => void,

    /**
     * Form field structure for rendering filter form
     */
    formFields: FormSectionProps[],

    /**
     * Optional custom render function for filter content
     */
    renderCustom?: FilterCustomRender,

    /**
     * Optional custom counter for the active-filter badge. Receives the applied filters
     * and returns the count to display. Useful with custom-rendered filters when the
     * default key counting is inaccurate.
     */
    getFilterCount?: (filters: Filters) => number,

    /**
     * Current filter mode — only shown when advancedConfig is provided
     */
    filterMode?: 'simple' | 'advanced',

    /**
     * Callback when the user switches filter mode
     */
    onFilterModeChange?: (mode: 'simple' | 'advanced') => void,

    /**
     * When provided, shows the mode toggle and enables advanced filter UI
     */
    advancedConfig?: { baseDataSource: string },

    /**
     * Current natural language question for advanced mode
     */
    advancedQuestion?: string,

    /**
     * Callback when question text changes
     */
    onAdvancedQuestionChange?: (q: string) => void,

    /**
     * Callback when user submits the advanced query
     */
    onAdvancedSubmit?: () => void,

    /**
     * Whether an advanced search is in progress
     */
    advancedLoading?: boolean,

    /**
     * Whether an advanced pipeline result is currently active (drives badge)
     */
    hasActivePipeline?: boolean,

    /**
     * Inline error message shown below the advanced filter textarea
     */
    advancedError?: string,

    /**
     * The active pipeline object — when set, shows the "Refine Pipeline" button
     */
    activePipeline?: any,

    /**
     * Callback to re-open the refinement modal for further edits
     */
    onEditRefinement?: () => void,

    /**
     * Whether the active pipeline has been manually refined (question is no longer valid)
     */
    pipelineRefined?: boolean,

    /**
     * Whether an original AI-generated pipeline is available for restore
     */
    hasOriginalPipeline?: boolean,

    /**
     * Callback to restore the original AI-generated pipeline
     */
    onRestoreOriginalPipeline?: () => void,

    /**
     * Predefined queries (for the configured object type) shown as a pick-list
     * below the question input.
     */
    predefinedQueries?: PredefinedQuery[],

    /**
     * Whether the predefined-query list is loading
     */
    predefinedLoading?: boolean,

    /**
     * Callback when the user picks a predefined query
     */
    onPickPredefined?: (q: PredefinedQuery) => void,

    /**
     * ID of the active predefined query (highlights its list row)
     */
    selectedPredefinedId?: string,

    /**
     * Name of the active predefined query (drives the predefined banner)
     */
    predefinedQueryName?: string,

    /**
     * Set when a saved view's referenced predefined query no longer exists
     */
    predefinedUnavailable?: { name?: string } | null,
}
```

## Usage

```tsx
import { FilterViewProps } from 'uxp/components';
```

## Related Types

- [Filters](../types/Filters.md)
- [SimpleFilter](../types/SimpleFilter.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FilterCustomRender](../types/FilterCustomRender.md)
- [PredefinedQuery](../types/PredefinedQuery.md)

