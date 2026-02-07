# undefined

export


## Definition

```tsx
type RelativeDate =
    | `${'+' | '-'}${number}${'d' | 'w' | 'm' | 'y'}${'|start' | '|end'}` // Patterns like +3d, -1w, 2m|start , 2m|end
    | 'startOfDay'
    | 'endOfDay'
    | 'startOfWeek'
    | 'endOfWeek'
    | 'startOfMonth'
    | 'endOfMonth'
    | 'startOfYear'
    | 'endOfYear';
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

