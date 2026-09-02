# IUrlViewProps


UrlView component props. The text value itself lives in the modal — this
view owns the input row, its apply button and the preview.


## Definition

```tsx
interface IUrlViewProps {
    /**
     * The raw text the user typed
     */
    urlEntry: string

    /**
     * Called on every keystroke
     */
    onUrlChange: (value: string) => void

    /**
     * Called when the user applies the typed URL — Enter, or the button
     */
    onApply: () => void

    /**
     * Multi-select mode. Only changes the button's wording: applying adds to
     * the selection rather than being the final choice.
     */
    multiple?: boolean
}
```

## Usage

```tsx
import { IUrlViewProps } from 'uxp/components';
```

