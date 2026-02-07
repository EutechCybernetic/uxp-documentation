# SafeLink


A safe link that:
- Uses `react-router` `<Link>` when inside a router.
- Falls back to `<a>` otherwise.
- Supports cmd/ctrl+click to open in new tab



## Installation

```tsx
import { SafeLink } from 'uxp/components';
```

## Signature

```tsx
const SafeLink: React.FunctionComponent<SafeLinkProps>
```

## Examples

```tsx
tsx
<SafeLink to="/settings">Settings</SafeLink>
```

```tsx
tsx
<SafeLink to="https://example.com" target="_blank">External</SafeLink>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|to|string|Yes|-|-|
|replace|boolean|No|-|-|
|children|React.ReactNode|Yes|-|-|
|className|string|No|-|-|

## Related Types

- [SafeLinkProps](../types/SafeLinkProps.md)

