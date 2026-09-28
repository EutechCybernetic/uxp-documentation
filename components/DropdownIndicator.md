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

[Open DropdownIndicator in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-dropdownindicator--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/overlays-dropdownindicator--docs&args=isOpen%3A%21false>)
- [Example 2](<https://story.uxp.iviva.com/?path=/docs/overlays-dropdownindicator--docs&args=isOpen%3A%21true%3BclassName%3Acustom-indicator&props=%7B%22styles%22%3A%7B%22fontSize%22%3A%2212px%22%2C%22color%22%3A%22%23333%22%7D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|false|
|styles|React.CSSProperties|No|-|-|
|className|string|No|-|-|

## Related Types

- [DropdownIndicatorProps](../types/DropdownIndicatorProps.md)

