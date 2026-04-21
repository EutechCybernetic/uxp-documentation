# getInputStateClass

Generate className string for input state (BEM modifiers)

All state modifiers follow BEM naming: uxpcore_input--{state}
- uxpcore_input--disabled
- uxpcore_input--readonly
- uxpcore_input--valid
- uxpcore_input--invalid




## Installation

```tsx
import { getInputStateClass } from 'uxp/components';
```

## Signature

```tsx
function getInputStateClass(props: InputStateProps): string
```

## Examples

```tsx
tsx
const stateClass = getInputStateClass({ disabled: true, isValid: false });
// Returns: 'uxpcore_input--disabled uxpcore_input--invalid'
```

## Related Types

- [InputStateProps](../types/InputStateProps.md)

