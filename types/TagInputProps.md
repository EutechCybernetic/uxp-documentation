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
     * Characters that submit the current input as a tag.
     * Enter always works regardless of this setting.
     * @default [',']
     */
    delimiters?: string[];

    /**
     * Additional class name on the outer container
     */
    className?: string;

    /**
     * Optional "add new" affordance rendered as a pinned footer in the
     * suggestion dropdown. Supports two scenarios — see {@link IAddNewValues}:
     *
     * - **Scenario A** (`onAddNewValue`): button surfaces only when the
     *   typed query has no matches. The resolved value is appended as a
     *   new tag.
     * - **Scenario B** (`alwaysShow: true` + `onClick`): button is always
     *   visible at the bottom of the dropdown; the host owns the side-effect
     *   (e.g. opening a slide-in form to register a new tag, then refreshing
     *   the options list via an event bus).
     *
     * @example
     * ```tsx
     * // Scenario A — create from typed text on no-match
     * <TagInput
     *   value={tags} onChange={setTags} options={fruits}
     *   addNewValues={{
     *     enable: true, title: 'Add as new fruit', loadingTitle: 'Saving…',
     *     onAddNewValue: async (typed) => {
     *       const created = await api.create(typed);
     *       return created.name;
     *     },
     *   }}
     * />
     * ```
     *
     * @example
     * ```tsx
     * // Scenario B — always-visible launcher button
     * <TagInput
     *   value={tags} onChange={setTags} options={tagCatalog}
     *   addNewValues={{
     *     enable: true, title: '+ New Tag', alwaysShow: true,
     *     onClick: () => openTagForm(),
     *   }}
     * />
     * ```
     */
    addNewValues?: IAddNewValues;
}
```

## Usage

```tsx
import { TagInputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IAddNewValues](../types/IAddNewValues.md)

