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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|code|string|Yes|-|-|
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

## Related Types

- [ILocalisationFormModalProps](../types/ILocalisationFormModalProps.md)
- [LocalizationMessage](../types/LocalizationMessage.md)

