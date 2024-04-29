# ButtonIconWrapper



This is a basic button component.




## Installation



```tsx
import {ButtonIconWrapper} from 'uxp/components';
```

## Examples



```tsx
<Button
     title="Click"
     onClick={() => {alert("Clicked")}}
 />
```



```tsx
<Button
     title="Click"
     onClick={() => {alert("Clicked")}}
     icon="https://static.iviva.com/images/lucy-logo.svg"
     loading={isLoading}
     loadingTitle="Loading..."
     className="custom-css-class"
/>
```



```tsx
<Button
     title='Save'
     loadingTitle='Saving...'
     useLoadingSpinner={true}
/>
```

