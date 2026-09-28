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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=navigation-safelink--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="SafeLink live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|to|string|Yes|-|"/view/system/configurations"|
|replace|boolean|No|-|-|
|children|React.ReactNode|Yes|-|"Configurations"|
|className|string|No|-|-|

## Related Types

- [SafeLinkProps](../types/SafeLinkProps.md)

