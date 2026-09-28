# FilterView

> **Part of [ObjectSearchComponent](ObjectSearchComponent.md).** Usually used through ObjectSearchComponent. Use it directly to build a custom layout.


FilterView component provides a dropdown interface for filtering data.
It displays a filter button with a badge showing the active filter count
and renders a dropdown panel with filter controls.



## Installation

```tsx
import { FilterView } from 'uxp/components';
```

## Signature

```tsx
const FilterView: React.MemoExoticComponent<React.FunctionComponent<FilterViewProps>>
```

## Examples

```tsx
<FilterView
  isOpen={isFilterOpen}
  onToggle={() => setIsFilterOpen(!isFilterOpen)}
  appliedFilters={currentFilters}
  onChange={(filters) => setCurrentFilters(filters)}
  formFields={filterFormStructure}
/>
```

```tsx
<FilterView
  isOpen={isFilterOpen}
  onToggle={() => setIsFilterOpen(!isFilterOpen)}
  appliedFilters={currentFilters}
  onChange={(filters) => setCurrentFilters(filters)}
  formFields={filterFormStructure}
  renderCustom={(filters, onChange, singleColumn) => (
    <CustomFilterPanel
      filters={filters}
      onChange={onChange}
      singleColumn={singleColumn}
    />
  )}
/>
```

## Live preview

[Open FilterView in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-object-search-filterview--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|true|
|onToggle|() => void|Yes|-|Log onToggle={() => console.log('toggle')}|
|appliedFilters|[Filters](../types/Filters.md)|Yes|-|{}|
|onChange|(filters: Filters) => void|Yes|-|Log onChange={(filters) => console.log('filters', filters)}|
|formFields|[FormSectionProps[]](../types/FormSectionProps.md)|Yes|-|[ { title: '', columns: 1, fields: [ { name: 'status', label: 'Status', type: '…|
|renderCustom|[FilterCustomRender](../types/FilterCustomRender.md)|No|-|-|
|getFilterCount|(filters: Filters) => number|No|-|-|
|filterMode|'simple' \| 'advanced'|No|-|-|
|onFilterModeChange|(mode: 'simple' \| 'advanced') => void|No|-|-|
|advancedConfig|{ baseDataSource: string }|No|-|-|
|advancedQuestion|string|No|-|-|
|onAdvancedQuestionChange|(q: string) => void|No|-|-|
|onAdvancedSubmit|() => void|No|-|-|
|advancedLoading|boolean|No|-|-|
|hasActivePipeline|boolean|No|-|-|
|advancedError|string|No|-|-|
|activePipeline|any|No|-|-|
|onEditRefinement|() => void|No|-|-|
|pipelineRefined|boolean|No|-|-|
|hasOriginalPipeline|boolean|No|-|-|
|onRestoreOriginalPipeline|() => void|No|-|-|
|predefinedQueries|[PredefinedQuery[]](../types/PredefinedQuery.md)|No|-|-|
|predefinedLoading|boolean|No|-|-|
|onPickPredefined|(q: PredefinedQuery) => void|No|-|-|
|selectedPredefinedId|string|No|-|-|
|predefinedQueryName|string|No|-|-|
|predefinedUnavailable|{ name?: string } \| null|No|-|-|

