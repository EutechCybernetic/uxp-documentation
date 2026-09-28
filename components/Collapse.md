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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=layout-collapse--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Collapse live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| React.ReactNode|Yes|-|"Maintenance history"|
|rightContent|React.ReactNode|No|-|-|
|children|React.ReactNode|No|-|Text <div>Filter replaced on 12 Aug. Belt tension checked on 3 Sep.</div>|
|defaultExpanded|boolean|No|-|true|
|className|string|No|-|-|

