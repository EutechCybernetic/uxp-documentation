# TagInputProps


Props for the TagInput component.


## Definition

```tsx
interface TagInputProps extends InputSizeProps, InputStateProps {
    /**
     * Current list of tags
     */
    value: string[];

    /**
     * Called whenever the tag list changes
     */
    onChange: (tags: string[]) => void;

    /**
     * Suggestions: static list or async resolver.
     * When provided, a dropdown of matching suggestions appears as the user types.
     */
    options?: string[] | ((text: string) => Promise<string[]>);

    /**
     * Placeholder shown when there are no tags and the input is empty
     */
    placeholder?: string;

    /**
     * Additional class name on the outer container
     */
    className?: string;
}
```

## Usage

```tsx
import { TagInputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

