# ListItemCard


A compact card for a list row: title, subtitle and meta on the left (one line each),
picture and status on the right. Use it for the compact column of an object search
(phones, and while the details panel is open).



## Installation

```tsx
import { ListItemCard } from 'uxp/components';
```

## Signature

```tsx
const ListItemCard: React.FunctionComponent<ListItemCardProps>
```

## Examples

#### User

```tsx
tsx
<ListItemCard
    title="Asha Fernando"
    subtitle="asha@company.com"
    meta="Facility Managers"
    name="Asha Fernando"
    status={<Chip label="Active" />}
/>
```

#### Name only

```tsx
tsx
<ListItemCard title="System Administrator" name="System Administrator" />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|ReactNode|Yes|-|'Asha Fernando'|
|subtitle|ReactNode|No|-|'asha@company.com'|
|meta|ReactNode|No|-|'Facility Managers'|
|image|string|No|-|-|
|name|string|No|-|-|
|status|ReactNode|No|-|-|
|lines|{ label: ReactNode, value: ReactNode }[]|No|-|-|
|className|string|No|-|-|

## Related Types

- [ListItemCardProps](../types/ListItemCardProps.md)

