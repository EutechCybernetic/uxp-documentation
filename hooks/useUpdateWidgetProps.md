# useUpdateWidgetProps



This hook is used to update the default props of a given widget instance.
This returns a function  (instanceId : string, props : any ) => void
instanceId: widget instance. can access this from props of the widget
props: default props that you ant to set (
     NOTE: you have to specify all the default props here
     NOTE: you can pass default props when registering a widget
)

This function will update the default props. But it won't re-render your widget. you have to handle that manually (maybe for now :))



## Installation



```tsx
import {useUpdateWidgetProps} from 'uxp/components';
```

