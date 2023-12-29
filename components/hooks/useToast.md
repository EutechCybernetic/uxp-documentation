# useToast



This hook allows you to popup notifications on the bottom right corner of the screen
(also known as toasts)

 

## Installation



```tsx
import {useToast} from 'uxp/components';
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

