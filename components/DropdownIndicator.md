# DropdownIndicator


A component that renders a chevron icon to indicate dropdown state, rotating when open.



## Installation

```tsx
import { DropdownIndicator } from 'uxp/components';
```

## Signature

```tsx
const DropdownIndicator: React.FunctionComponent<DropdownIndicatorProps>
```

## Examples

```tsx
<DropdownIndicator isOpen={false} />
```

```tsx
<DropdownIndicator
  isOpen={true}
  className="custom-indicator"
  styles={{ fontSize: '12px', color: '#333' }}
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=overlays-dropdownindicator--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DropdownIndicator live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=overlays-dropdownindicator--default&amp;viewMode=story&amp;args=isOpen%3A%21false"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DropdownIndicator: Example 1"
></iframe>

#### Example 2

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=overlays-dropdownindicator--default&amp;viewMode=story&amp;args=isOpen%3A%21true%3BclassName%3Acustom-indicator&amp;props=%7B%22styles%22%3A%7B%22fontSize%22%3A%2212px%22%2C%22color%22%3A%22%23333%22%7D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DropdownIndicator: Example 2"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|false|
|styles|React.CSSProperties|No|-|-|
|className|string|No|-|-|

## Related Types

- [DropdownIndicatorProps](../types/DropdownIndicatorProps.md)

