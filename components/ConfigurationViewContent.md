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

[Open ConfigurationViewContent in the playground →](<https://story.uxp.iviva.com/?path=/docs/forms-configuration-view-configurationviewcontent--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|React.ReactNode|Yes|-|Text <div>Account name, time zone and currency.</div>|

## Related Types

- [ConfigurationViewContentProps](../types/ConfigurationViewContentProps.md)

