# InputMaskToken

Fill-in masks for Input: a pattern of fixed text and {TOKEN} blanks, e.g. "B{YY}{SEQ}".
Pure functions, no React, so they can be tested and reused.


## Definition

```tsx
export interface InputMaskToken {
    /**
     * How many characters the blank takes. Without it the blank is free length: it ends at the next fixed text.
     * @example 2
     */
    length?: number;
    /**
     * The characters the blank accepts, tested one character at a time.
     * @example /\d/
     */
    pattern?: RegExp;
    /**
     * What the empty blank shows. Defaults to the token name.
     * @example "YY"
     */
    hint?: string;
}
```

## Usage

```tsx
import { InputMaskToken } from 'uxp/components';
```

