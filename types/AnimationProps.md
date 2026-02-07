# AnimationProps

Common animation props shared by FontAwesome and Phosphor icons


## Definition

```tsx
export interface AnimationProps {
    /**
     * Animate icon with spinning effect
     */
    spin?: boolean;

    /**
     * Animate icon with pulsing effect
     */
    pulse?: boolean;

    /**
     * Animate icon with beat effect
     */
    beat?: boolean;

    /**
     * Animate icon with bounce effect
     */
    bounce?: boolean;

    /**
     * Animate icon with shake effect
     */
    shake?: boolean;

    /**
     * Animate icon with fade effect
     */
    fade?: boolean;
}
```

## Usage

```tsx
import { AnimationProps } from 'uxp/components';
```

