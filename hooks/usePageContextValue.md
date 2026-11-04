# usePageContextValue


What the user is looking at: the page (from the URL) and what the page added with usePageContext.
Empty outside the shell.



## Installation

```tsx
import { usePageContextValue } from 'uxp/components';
```

## Signature

```tsx
function usePageContextValue(): PageContextValue
```

## Examples

```tsx
tsx
const { page, entries } = usePageContextValue();
const summary = entries.map(e => e.text).join('\n\n') || page?.title;
```

## Related Types

- [PageContextValue](../types/PageContextValue.md)
- [PageContextPage](../types/PageContextPage.md)
- [PageContextEntry](../types/PageContextEntry.md)

