# useToast

This hook allows you to popup notifications at the top right of the screen, as a stack: the
newest in front, older ones peeking behind. With a mouse over the stack it opens into the full
list with Clear all, and nothing closes by itself. On phones the stack is full width at the top;
a tap opens the list (Close and Clear all at the bottom), a sideways swipe dismisses one,
swiping the stack up dismisses all. `removeAll()` removes every toast.
(also known as toasts)

 

## Installation

```tsx
import { useToast } from 'uxp/components';
```

## Signature

```tsx
function useToast(): IToastResult
```

## Examples

```tsx
let toast = useToast();
 toast.success("Item has been added");
```

```tsx
let toast = useToast();
 toast.success({title:'Info',content:'Item has been added'});
```

```tsx
let toast = useToast();
 toast.error({title:'Failed!',content:'Failed to add item',closeAfter:5,onClose:()=>{console.log('toast closed')}});
```

```tsx
With custom icon
```
 let toast = useToast();
 toast.success({icon: "path/to/your/image", content: "Toast with custom icon"});
```

```tsx
Custom toast example
```
 let toast = useToast();
 toast.custom({content: "Custom Toast message"});
```

```tsx
Custom toast example
```
 let toast = useToast();
 toast.custom({
     content: () => <div className="content">
             You custom toast content
         </div>
 );
```

## Related Types

- [IToastResult](../types/IToastResult.md)
- [IToastFunction](../types/IToastFunction.md)
- [IPartialContent](../types/IPartialContent.md)
- [IToastContent](../types/IToastContent.md)
- [IRemoveFunction](../types/IRemoveFunction.md)
- [IRemoveAllFunction](../types/IRemoveAllFunction.md)

