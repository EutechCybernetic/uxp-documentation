# LocalizationFormModal



This component renders a trigger button that opens a modal for configuring localization messages.



## Installation

```tsx
import { LocalizationFormModal } from 'uxp/components';
```

## Signature

```tsx
const LocalizationFormModal: React.FunctionComponent<ILocalisationFormModalProps>
```

## Examples

#### // Default usage with icon button
<LocalizationFormModal code='uxp-core.text.save' />

#### // With custom trigger and deferred saving
<LocalizationFormModal
  code='uxp-core.auth.welcome-to'
  useDoneButton={true}
  onSave={handleMessagesUpdate}
  trigger={<IconButton type="edit" />}
/>

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-localization-localizationformmodal--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="LocalizationFormModal live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-localization-localizationformmodal--default&amp;viewMode=story&amp;props=%7B%22code%22%3A%22uxp-core.text.save%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="LocalizationFormModal: Example 1"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|code|string|Yes|-|"uxp-core.text.changes-saved"|
|useGoogleTranslate|boolean|No|-|-|
|beforeOpen|() => boolean|No|-|-|
|className|string|No|-|-|
|onSave|(code: string, messages: LocalizationMessage[]) => Promise<{ success: boolean, error?: string }>|No|-|-|
|submitButtonLabel|string|No|-|-|
|cancelButtonLabel|string|No|-|-|
|hideCancelButton|boolean|No|-|-|
|trigger|React.ReactElement|No|-|-|
|hideTrigger|boolean|No|-|-|
|customMessages|Record<string, string>|No|-|-|
|allowCodeEdit|boolean|No|-|-|

## Related Types

- [ILocalisationFormModalProps](../types/ILocalisationFormModalProps.md)
- [LocalizationMessage](../types/LocalizationMessage.md)

