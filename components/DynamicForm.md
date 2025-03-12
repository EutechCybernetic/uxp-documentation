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
|formContainerStyles|React.CSSProperties||
|renderOptions|{ renderStyle: 'standard' \| 'tabs' \| 'wizard', direction?: 'vertical' \| 'horizontal' // only applicable to tabs and wizard tabBackgroundColor?: string, tabTextColor?: string, activeTabBackgroundColor?: string, activeTabTextColor?: string, errorTabBackgroundColor?: string, errorTabTextColor?: string, disabledTabBackgroundColor?: string, disabledTabTextColor?: string, previousButtonLabel?: string, nextButtonLabel?: string }||


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


### formContainerStyles



---





|type|
|-|
|React.CSSProperties|


### renderOptions



---





|type|
|-|
|{ renderStyle: 'standard' \| 'tabs' \| 'wizard', direction?: 'vertical' \| 'horizontal' // only applicable to tabs and wizard tabBackgroundColor?: string, tabTextColor?: string, activeTabBackgroundColor?: string, activeTabTextColor?: string, errorTabBackgroundColor?: string, errorTabTextColor?: string, disabledTabBackgroundColor?: string, disabledTabTextColor?: string, previousButtonLabel?: string, nextButtonLabel?: string }|


