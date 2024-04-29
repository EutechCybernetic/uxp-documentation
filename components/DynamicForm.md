# DynamicForm




This component provides a dynamic form component
Developer can pass a json structure and it will create a form component


## Installation



```tsx
import {DynamicForm} from 'uxp/components';
```

## Properties

|Name|Type|Description|
|-|-|-|
|formStructure|IDynamicFormFieldProps[]||
|onSubmit|(data: { [key: string]: string \| number \| boolean }) => void||
|onCancel|() => void||
|type|IFormType||
|widget|IWidgetInstance||
|submitButtonLabel|string||
|cancelButtonLabel|string||
|hideCancelButton|boolean||
### formStructure



---





|type|
|-|
|IDynamicFormFieldProps[]|
### onSubmit



---





|type|
|-|
|(data: { [key: string]: string \| number \| boolean }) => void|
### onCancel



---





|type|
|-|
|() => void|
### type



---





|type|
|-|
|IFormType|
### widget



---





|type|
|-|
|IWidgetInstance|
### submitButtonLabel



---





|type|
|-|
|string|
### cancelButtonLabel



---





|type|
|-|
|string|
### hideCancelButton



---





|type|
|-|
|boolean|
