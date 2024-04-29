# useDebounce



This is a custom hook to get the debounced values



## Installation



```tsx
import {useDebounce} from 'uxp/components';
```

## Examples



```tsx
let [query, setQuery] = useState("")
 let debouncedQuery = useDebounce(query)
```



```tsx
with timeout

 let [query, setQuery] = useState("")
 let debouncedQuery = useDebounce(query, 500)
```

