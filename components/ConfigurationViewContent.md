# ConfigurationViewContent

> **Part of [ConfigurationView](ConfigurationView.md).** Usually used through ConfigurationView. Use it directly to build a custom layout.


Content wrapper for a configuration section — applies the standard scroll and
overflow behaviour (flex-grow, overflow-y: auto). Use alongside
ConfigurationViewHeader inside `hideHeader: true` sections so the content area
matches the built-in ConfigurationView layout exactly.



## Installation

```tsx
import { ConfigurationViewContent } from 'uxp/components';
```

## Signature

```tsx
const ConfigurationViewContent: React.FunctionComponent<ConfigurationViewContentProps>
```

## Examples

```tsx
tsx
<ConfigurationViewHeader title="Login Page Configuration" actions={...} />
<ConfigurationViewContent>
  <TabComponent tabs={tabs} />
</ConfigurationViewContent>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-configuration-view-configurationviewcontent--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ConfigurationViewContent live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|React.ReactNode|Yes|-|Text <div>Account name, time zone and currency.</div>|

## Related Types

- [ConfigurationViewContentProps](../types/ConfigurationViewContentProps.md)

