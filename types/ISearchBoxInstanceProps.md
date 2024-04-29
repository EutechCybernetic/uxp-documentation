# ISearchBoxInstanceProps






This component is used to render a search box.





```tsx
interface ISearchBoxInstanceProps {
    focusInput: () => void,
    getInputElement: () => React.MutableRefObject<HTMLInputElement>
}
```

## Usage



```tsx
import {ISearchBoxInstanceProps} from 'uxp/components';
```

## Examples



```tsx
<SearchBox
     value={inputValue}
     onChange={(newValue) => { setInputValue(newValue) }}
 />
```



```tsx
<SearchBox
     value={inputValue}
     onChange={(newValue) => { setInputValue(newValue) }}
     collapsed
     position="right"
 />
```

