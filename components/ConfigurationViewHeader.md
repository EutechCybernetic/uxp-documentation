# ConfigurationViewHeader


Header bar for a configuration section — renders title on the left and optional
action buttons on the right. Uses the same styling as ConfigurationView's built-in
section header so it can be used directly inside `hideHeader: true` sections for
consistent appearance.



## Installation

```tsx
import { ConfigurationViewHeader } from 'uxp/components';
```

## Signature

```tsx
const ConfigurationViewHeader: React.FunctionComponent<ConfigurationViewHeaderProps>
```

## Examples

```tsx
tsx
// Inside a component used in a hideHeader:true section
<ConfigurationViewHeader
  title="Login Page Configuration"
  actions={<>
    <ButtonComponent title="Reset" onClick={handleReset} variant="secondary" />
    <ButtonComponent title="Save" onClick={handleSave} />
  </>}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| React.ReactNode|Yes|-|-|
|actions|React.ReactNode|No|-|-|
|variant|'section' \| 'main'|No|-|-|

## Related Types

- [ConfigurationViewHeaderProps](../types/ConfigurationViewHeaderProps.md)

