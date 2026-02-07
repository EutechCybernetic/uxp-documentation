# useResizeEffect

This hook allows you to check if the widget has resized.
You can update the widget if necessary (if has resized)




## Installation

```tsx
import { useResizeEffect } from 'uxp/components';
```

## Signature

```tsx
function useResizeEffect(instanceId: string): ResizeEffectHook
```

## Examples

```tsx
To check if widget has been resized
```
 let hasResized = useResizeEffect(props.instanceId);
```

## Related Types

- [ResizeEffectHook](../types/ResizeEffectHook.md)

