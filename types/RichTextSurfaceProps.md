# RichTextSurfaceProps

## Definition

```tsx
export interface RichTextSurfaceProps {
    /** Markdown value (markdown in / markdown out) */
    value: string;
    /** Called with the serialized markdown whenever the user edits */
    onChange: (md: string) => void;
    readOnly?: boolean;
    disabled?: boolean;
    /** Placeholder shown while the surface is empty */
    placeholder?: string;
    /** Reports formatting states at the caret so a toolbar can highlight buttons */
    onActiveStatesChange?: (states: RichActiveStates) => void;
    /** Localizer for the in-content image controls tooltips (falls back to raw keys) */
    localize?: (key: string) => string;
}
```

## Usage

```tsx
import { RichTextSurfaceProps } from 'uxp/components';
```

## Related Types

- [RichActiveStates](../types/RichActiveStates.md)
- [RichCommand](../types/RichCommand.md)

