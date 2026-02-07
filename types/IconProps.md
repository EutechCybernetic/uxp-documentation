# undefined

Universal Icon component props
Accepts any icon type: FontAwesome, Phosphor, Image URL, Text/Emoji, or React element


## Definition

```tsx
export type IconProps =
    | FontAwesomeIconProps
    | PhosphorIconProps
    | ImageIconProps
    | TextIconProps
    | (BaseIconProps & { icon: ReactElement });
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

