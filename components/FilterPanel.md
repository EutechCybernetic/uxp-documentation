# FilterPanel


Displays a filter button which, when clicked, opens a popup panel.
Suitable for hiding filters for widgets or searches.
Uses Dropdown component for positioning with v5 styling patterns.



## Installation

```tsx
import { FilterPanel } from 'uxp/components';
```

## Signature

```tsx
const FilterPanel: React.FunctionComponent<FilterPanelProps>
```

## Examples

```tsx
Basic filter panel
```tsx
<FilterPanel>
  <FormField>
    <Label>Category</Label>
    <Select options={categories} selected={category} onChange={setCategory} />
  </FormField>
</FilterPanel>
```

```tsx
With clear functionality
```tsx
<FilterPanel
  enableClear={hasFilters}
  onClear={() => {
    setCategory(null);
    setDateRange(null);
  }}
>
  <FormField>
    <Label>Sort By</Label>
    <Select options={sortOptions} selected={sortBy} onChange={setSortBy} />
  </FormField>
  <FormField>
    <Label>Date Range</Label>
    <DateRangePicker value={dateRange} onChange={setDateRange} />
  </FormField>
</FilterPanel>
```

```tsx
Custom position and icon
```tsx
<FilterPanel
  position="bottom-left"
  icon="sort"
  enableClear={true}
  onClear={handleClear}
>
  <FormField>
    <Label>Status</Label>
    <Select options={statusOptions} selected={status} onChange={setStatus} />
  </FormField>
</FilterPanel>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|onOpen|() => void|No|-|-|
|onClose|() => void|No|-|-|
|onClear|() => void|No|-|-|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|className|string|No|-|-|
|enableClear|boolean|No|-|-|
|icon|string|No|-|-|
|children|React.ReactNode|No|-|* ```tsx|

## Related Types

- [FilterPanelProps](../types/FilterPanelProps.md)
- [DropdownPosition](../types/DropdownPosition.md)

