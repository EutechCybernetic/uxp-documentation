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
|formStructure|FormSectionProps[]||
|beforeSubmit|(data: IFormData) => Promise<IFormData>||
|onSubmit|(data: IFormData) => Promise<void>||
|onCancel|() => void||
|submitButtonLabel|string||
|submitButtonLoadingLabel|string||
|cancelButtonLabel|string||
|hideCancelButton|boolean||
|isLoading|boolean||


### formStructure



---





|type|
|-|
|FormSectionProps[]|


### beforeSubmit



---





|type|
|-|
|(data: IFormData) => Promise<IFormData>|


### onSubmit



---





|type|
|-|
|(data: IFormData) => Promise<void>|


### onCancel



---





|type|
|-|
|() => void|


### submitButtonLabel



---





|type|
|-|
|string|


### submitButtonLoadingLabel



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


### isLoading



---





|type|
|-|
|boolean|


