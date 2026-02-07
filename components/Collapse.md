# Collapse


A component that displays a collapsible panel with a title and optional content.



## Installation

```tsx
import { Collapse } from 'uxp/components';
```

## Signature

```tsx
const Collapse: React.MemoExoticComponent<React.FunctionComponent<CollapseProps>>
```

## Examples

```tsx
<Collapse
  title="Details"
  children={<p>This is the collapsible content.</p>}
/>
```

```tsx
<Collapse
  title={<h3>Custom Title</h3>}
  rightContent={<button>Edit</button>}
  children={<div>Custom content here</div>}
  defaultExpanded={false}
  className="custom-collapse"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| React.ReactNode|Yes|-|-|
|rightContent|React.ReactNode|No|-|-|
|children|React.ReactNode|No|-|-|
|defaultExpanded|boolean|No|-|-|
|className|string|No|-|-|

