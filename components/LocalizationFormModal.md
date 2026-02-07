# LocalizationFormModal



This component let's you to configure localisation messages for the enabled languages in iviva and it opens in a modal




## Installation

```tsx
import { LocalizationFormModal } from 'uxp/components';
```

## Signature

```tsx
const LocalizationFormModal: React.ForwardRefExoticComponent<React.RefAttributes<ILocalisationFormModalInstanceProps> & ILocalisationFormModalProps>
```

## Examples

```tsx
<LocalizationFormModal
code: 'uxp-core.text.save'
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|code|string|Yes|-|-|
|useGoogleTranslate|boolean|No|-|-|
|beforeOpen|() => boolean|No|-|-|
|className|string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|open|() => void|-|
|close|() => void|-|

## Related Types

- [ILocalisationFormModalProps](../types/ILocalisationFormModalProps.md)
- [ILocalisationFormModalInstanceProps](../types/ILocalisationFormModalInstanceProps.md)

