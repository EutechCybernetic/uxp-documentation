# LocalizationForm


This component let's you to configure localisation messages for the enabled languages in iviva



## Installation

```tsx
import { LocalizationForm } from 'uxp/components';
```

## Signature

```tsx
const LocalizationForm: React.FunctionComponent<ILocalisationFormProps>
```

## Examples

#### <LocalizationForm
code: 'uxp-core.text.save'
/>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|code|string|Yes|-|-|
|useGoogleTranslate|boolean|No|-|-|
|className|string|No|-|-|
|onSave|(code: string, messages: LocalizationMessage[]) => Promise<{ success: boolean, error?: string }>|No|-|-|
|onCancel|() => void|No|-|-|
|submitButtonLabel|string|No|-|-|
|cancelButtonLabel|string|No|-|-|
|hideCancelButton|boolean|No|-|-|
|customMessages|Record<string, string>|No|-|-|
|allowCodeEdit|boolean|No|-|-|

## Related Types

- [ILocalisationFormProps](../types/ILocalisationFormProps.md)
- [LocalizationMessage](../types/LocalizationMessage.md)

