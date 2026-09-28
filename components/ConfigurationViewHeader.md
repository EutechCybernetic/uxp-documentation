# ConfigurationViewHeader

> **Part of [ConfigurationView](ConfigurationView.md).** Usually used through ConfigurationView. Use it directly to build a custom layout.


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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-configuration-view-configurationviewheader--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ConfigurationViewHeader live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string \| React.ReactNode|Yes|-|"General settings"|
|actions|React.ReactNode|No|-|Save button actions={<Button title="Save" icon="fas save" />}|
|variant|'section' \| 'main'|No|-|-|

## Related Types

- [ConfigurationViewHeaderProps](../types/ConfigurationViewHeaderProps.md)

