# SearchBoxHandlers




This component is used to render a search box.



## Definition

```tsx
interface SearchBoxHandlers {
    focusInput: () => void,
    getInputElement: () => React.MutableRefObject<HTMLInputElement>
}
```

## Usage

```tsx
import { SearchBoxHandlers } from 'uxp/components';
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

