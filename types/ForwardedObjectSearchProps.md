# ForwardedObjectSearchProps

OSC props forwarded straight through — minus selection wiring which this modal owns.


## Definition

```tsx
type ForwardedObjectSearchProps = Omit<
    React.ComponentProps<typeof ObjectSearchComponent>,
    'onClickRow' | 'selected' | 'onSelect'
>;
```

## Usage

```tsx
import { ForwardedObjectSearchProps } from 'uxp/components';
```

