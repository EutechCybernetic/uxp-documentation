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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|-|
|styles|React.CSSProperties|No|-|-|
|className|string|No|-|-|

## Related Types

- [DropdownIndicatorProps](../types/DropdownIndicatorProps.md)

