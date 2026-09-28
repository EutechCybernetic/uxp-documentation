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

[Open LocalizationFormModal in the playground →](<https://story.uxp.iviva.com/?path=/docs/forms-localization-localizationformmodal--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/forms-localization-localizationformmodal--docs&props=%7B%22code%22%3A%22uxp-core.text.save%22%7D>)

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

