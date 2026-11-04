# MobileToolbar


A bottom toolbar for mobile layouts.

A slider steps through items with prev / next. Tapping the item's name opens a list to pick
from directly. Icon buttons sit on the right.



## Installation

```tsx
import { MobileToolbar } from 'uxp/components';
```

## Signature

```tsx
const MobileToolbar: React.FunctionComponent<MobileToolbarProps>
```

## Examples

#### Slider with refresh and filter buttons

```tsx
tsx
const [selected, setSelected] = useState('open');
const [filtersOpen, setFiltersOpen] = useState(false);
<MobileToolbar
    items={[{ id: 'open', label: 'Open', count: 4 }, { id: 'closed', label: 'Closed' }]}
    selected={selected}
    onSelect={setSelected}
    pickerTitle="Status"
    actions={[
        { id: 'refresh', icon: 'phr arrow-clockwise', label: 'Refresh', onClick: reload },
        { id: 'filter', icon: 'phr funnel', label: 'Filters', onClick: () => setFiltersOpen(o => !o), active: filtersOpen },
    ]}
/>
```

## Live preview

[Open MobileToolbar in the playground →](<https://story.uxp.iviva.com/?path=/docs/navigation-mobiletoolbar--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|[MobileToolbarItem[]](../types/MobileToolbarItem.md)|No|-|[{ id: 'open', label: 'Open', count: 4 }, { id: 'closed', label: 'Closed' }]|
|selected|string|No|-|'open'|
|onSelect|(id: string) => void|No|-|-|
|pickerTitle|string|No|-|-|
|pickerSearch|boolean|No|false|-|
|pickerContained|boolean|No|false|-|
|actions|[MobileToolbarAction[]](../types/MobileToolbarAction.md)|No|-|[{ id: 'refresh', icon: 'phr arrow-clockwise', label: 'Refresh', onClick: () =>…|
|search|{ value: string onChange: (value: string) => void placeholder?: string }|No|-|-|
|leading|React.ReactNode|No|-|-|
|slim|boolean|No|-|-|
|trailing|React.ReactNode|No|-|-|
|embedded|boolean|No|false|-|
|className|string|No|-|-|

## Related Types

- [MobileToolbarProps](../types/MobileToolbarProps.md)
- [MobileToolbarItem](../types/MobileToolbarItem.md)
- [MobileToolbarAction](../types/MobileToolbarAction.md)

