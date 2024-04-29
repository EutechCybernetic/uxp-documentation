# ICheckboxInstanceProps






A checkbox component. This can render a true/value value in multiple ways. Set the type property to determine how it looks visually.
types : default, bordered, change-icon, switch-line, switch-box





```tsx
interface ICheckboxInstanceProps {
    focus: () => void
}
```

## Usage



```tsx
import {ICheckboxInstanceProps} from 'uxp/components';
```

## Examples



```tsx
<Checkbox
     checked={checked}
     onChange={(isChecked) => setChecked(isChecked)}
     label='Are you sure'
 />
```



```tsx
<Checkbox
     checked={checked}
     onChange={(isChecked) => setChecked(isChecked)}
     label='Are you sure'
     type="switch-box"
 />
```

