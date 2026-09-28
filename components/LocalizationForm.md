# LocalizationForm

> **Part of [LocalizationFormModal](LocalizationFormModal.md).** Usually used through LocalizationFormModal. Use it directly to build a custom layout.


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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-localization-localizationform--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="LocalizationForm live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|code|string|Yes|-|"uxp-core.text.changes-saved"|
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

