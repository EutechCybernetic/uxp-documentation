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

#### Basic filter panel

```tsx
tsx
<FilterPanel>
  <FormField>
    <Label>Category</Label>
    <Select options={categories} selected={category} onChange={setCategory} />
  </FormField>
</FilterPanel>
```

#### With clear functionality

```tsx
tsx
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

#### Custom position and icon

```tsx
tsx
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

## Live preview

[Open FilterPanel in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-filterpanel--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|onOpen|() => void|No|-|-|
|onClose|() => void|No|-|-|
|onClear|() => void|No|-|Log onClear={() => console.log('cleared')}|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|className|string|No|-|-|
|enableClear|boolean|No|-|-|
|icon|string|No|-|-|
|children|React.ReactNode|No|-|<FilterPanel enableClear={hasFilters} onClear={clearFilters}> <FormField> <Labe…|

## Related Types

- [FilterPanelProps](../types/FilterPanelProps.md)
- [DropdownPosition](../types/DropdownPosition.md)

