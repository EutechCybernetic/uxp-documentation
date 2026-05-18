# TagInput

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-taginput--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TagInput live demo"
></iframe>



A tag input that stores values as a list of string chips.

Users type into an inline text field and press Enter or comma (`,`) to add a tag.
Existing tags are displayed as removable `Chip` components. Pressing Backspace
on an empty field removes the last tag.

An optional `options` prop enables a suggestion dropdown. It accepts either a
static `string[]` (filtered client-side) or an async function that resolves to
`string[]` (called with a 300ms debounce). Already-added tags are excluded from
suggestions. Arrow keys navigate the dropdown; Enter selects the highlighted item.



## Installation

```tsx
import { TagInput } from 'uxp/components';
```

## Signature

```tsx
const TagInput: React.FunctionComponent<TagInputProps>
```

## Examples

```tsx
tsx
// Basic — free-form tags only
<TagInput
  value={tags}
  onChange={setTags}
  placeholder="Add tags..."
/>

// With async suggestions
<TagInput
  value={tags}
  onChange={setTags}
  options={async (text) => {
    const res = await fetchTags(text);
    return res.map(t => t.name);
  }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string[]|Yes|-|-|
|onChange|(tags: string[]) => void|Yes|-|-|
|options|string[] \| ((text: string) => Promise<string[]>)|No|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [TagInputProps](../types/TagInputProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)

