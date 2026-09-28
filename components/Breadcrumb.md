# Breadcrumb


A breadcrumb navigation component with configurable collapsing behavior.



## Installation

```tsx
import { Breadcrumb } from 'uxp/components';
```

## Signature

```tsx
const Breadcrumb: React.FunctionComponent<BreadcrumbProps>
```

## Examples

```tsx
tsx
const items = [
  { label: 'Home', icon: ['fas', 'home'], link: '/' },
  { label: 'Products', link: '/products' },
  { label: 'Electronics', link: '/products/electronics' },
  { label: 'Laptops', link: '/products/electronics/laptops' },
  { label: 'Gaming', link: '/products/electronics/laptops/gaming' },
];

<Breadcrumb items={items} maxItems={4} />
```

```tsx
tsx
<Breadcrumb
  items={items}
  maxItems={5}
  itemsOnLeft={2}
  itemsOnRight={2}
  separator={<span>→</span>}
  onItemClick={(item, index) => console.log('Clicked:', item)}
/>
```

## Live preview

[Open Breadcrumb in the playground →](<https://story.uxp.iviva.com/?path=/docs/navigation-breadcrumb--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|[BreadcrumbItem[]](../types/BreadcrumbItem.md)|Yes|-|[ { label: 'Sites' }, { label: 'Head Office' }, { label: 'Level 1' }, { label: …|
|maxItems|number|No|-|-|
|itemsOnLeft|number|No|-|-|
|itemsOnRight|number|No|-|-|
|separator|React.ReactNode|No|-|-|
|className|string|No|-|-|
|textColor|string|No|-|-|
|backgroundColor|string|No|-|-|
|activeColor|string|No|-|-|
|separatorColor|string|No|-|-|
|hoverColor|string|No|-|-|
|onItemClick|(item: BreadcrumbItem, index: number) => void|No|-|Log onItemClick={(item, index) => console.log('crumb', index, item.label)}|

## Related Types

- [BreadcrumbProps](../types/BreadcrumbProps.md)
- [BreadcrumbItem](../types/BreadcrumbItem.md)

