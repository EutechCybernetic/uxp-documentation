# DropdownIndicator

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=other-dropdownindicator--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DropdownIndicator live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|-|
|styles|React.CSSProperties|No|-|-|
|className|string|No|-|-|

## Related Types

- [DropdownIndicatorProps](../types/DropdownIndicatorProps.md)

