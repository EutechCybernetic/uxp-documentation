# FilterView

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=list-tables-object-search-filterview--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="FilterView live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|-|
|onToggle|() => void|Yes|-|-|
|appliedFilters|[Filters](../types/Filters.md)|Yes|-|-|
|onChange|(filters: Filters) => void|Yes|-|-|
|formFields|[FormSectionProps[]](../types/FormSectionProps.md)|Yes|-|-|
|renderCustom|[FilterCustomRender](../types/FilterCustomRender.md)|No|-|-|

