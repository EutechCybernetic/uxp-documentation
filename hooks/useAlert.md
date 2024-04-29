# useAlert



The react hook for creating alerts and confirm alerts



## Installation



```tsx
import {useAlert} from 'uxp/components';
```

## Examples



```tsx
alerts.show("Item updated")
```



```tsx
alerts.show({title: "Info", content: "Item updated", cancelButtonTitle: "Ok" })
```



```tsx
Auto close an alert (disabled by default)

alerts.show({content: 'Item updated', autoClose: true, closeAfter: 2000})
```



```tsx
wait until alert is closed

 await alerts.show("Item updated")
 ... execute the rest
```



```tsx
let hasConfirmed = await alerts.confirm("Are you sure?")

 if(hasConfimed) {
     ... execute the rest
 }
```



```tsx
alerts.confirm("Are you sure?")
.then(hasConfirmed => {
     if(hasConfirmed) {
         ... execute the rest
     }
})
```

