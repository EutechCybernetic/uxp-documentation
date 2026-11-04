# DesktopOnly

> **Advanced.** Available for building custom components. Most apps do not need it.


Shows its children on larger screens. On phones it shows "This page needs a larger screen"
instead. Use it for an editor that opens over a page that works on phones (from a URL
parameter, a modal or a panel). Whole pages use the `desktopOnly` page flag in bundle.json.



## Installation

```tsx
import { DesktopOnly } from 'uxp/components';
```

## Signature

```tsx
const DesktopOnly: React.FunctionComponent<DesktopOnlyProps>
```

## Examples

#### if (isMobile && designerKey) return <DesktopOnly />;

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|React.ReactNode|No|-|-|
|onBack|() => void|No|-|-|

## Related Types

- [DesktopOnlyProps](../types/DesktopOnlyProps.md)

