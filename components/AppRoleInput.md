# AppRoleInput


A multi-select input for selecting App:Role pairs.
Options are loaded on demand (10 per page) and cached per session.
Supports search filtering by typing in the dropdown.



## Installation

```tsx
import { AppRoleInput } from 'uxp/components';
```

## Signature

```tsx
const AppRoleInput: React.FunctionComponent<AppRoleInputProps>
```

## Examples

```tsx
<AppRoleInput
  value={appRoles}
  onChange={setAppRoles}
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-selection-approleinput--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="AppRoleInput live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"System:admin"|
|onChange|(value: string) => void|Yes|-|-|

## Related Types

- [AppRoleInputProps](../types/AppRoleInputProps.md)
- [InputStateProps](../types/InputStateProps.md)

