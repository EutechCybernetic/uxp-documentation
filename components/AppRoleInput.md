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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|-|
|onChange|(value: string) => void|Yes|-|-|

## Related Types

- [AppRoleInputProps](../types/AppRoleInputProps.md)
- [InputStateProps](../types/InputStateProps.md)

