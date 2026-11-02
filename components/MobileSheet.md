# MobileSheet


A panel that slides up from the bottom of the screen, for mobile layouts.

Sits between the app header and footer. A tap outside the sheet, Escape, or dragging it down
(from anywhere, while its content is scrolled to the top) closes it. While it is open the page
does not pull-to-refresh.



## Installation

```tsx
import { MobileSheet } from 'uxp/components';
```

## Signature

```tsx
const MobileSheet: React.FunctionComponent<MobileSheetProps>
```

## Examples

#### Fit to content

```tsx
tsx
const [open, setOpen] = useState(false);
<Button title="Open" onClick={() => setOpen(true)} />
<MobileSheet isOpen={open} onClose={() => setOpen(false)}>
    <div style={{ padding: '1rem' }}>Sheet content</div>
</MobileSheet>
```

#### Full height with a title and close button

```tsx
tsx
<MobileSheet isOpen={open} onClose={() => setOpen(false)} height="full" title="Filters" showClose>
    <div style={{ padding: '1rem' }}>Sheet content</div>
</MobileSheet>
```

#### Inside a panel

```tsx
tsx
<div style={{ position: 'relative', height: '20rem' }}>
    <MobileSheet isOpen={open} onClose={() => setOpen(false)} contained>
        <div style={{ padding: '1rem' }}>Filters</div>
    </MobileSheet>
</div>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|isOpen|boolean|Yes|-|true|
|onClose|() => void|Yes|-|-|
|height|'fit' \| 'full'|No|'fit'|-|
|contained|boolean|No|false|-|
|title|React.ReactNode|No|-|-|
|showClose|boolean|No|false|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|Content <div style={{ padding: '1rem' }}>Sheet content</div>|

## Related Types

- [MobileSheetProps](../types/MobileSheetProps.md)

