# InputPrefixConfig


Wrapped ReactNode config for a prefix or suffix slot.
Lets you render any content in the slot with optional separator styling.



## Definition

```tsx
export interface InputPrefixConfig {
    /** Content to render in the slot */
    value: React.ReactNode;
    /** Show secondary background + border separator. Default: false */
    showSeparator?: boolean;
}
```

## Usage

```tsx
import { InputPrefixConfig } from 'uxp/components';
```

## Examples

```tsx
tsx
// Static text label with separator
prefix={{ value: '$ ', showSeparator: true }}

// Icon without separator (same as passing the icon directly)
prefix={{ value: <Icon icon={['fal', 'search']} /> }}
```

