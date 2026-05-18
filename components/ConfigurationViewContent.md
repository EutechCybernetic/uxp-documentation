# ConfigurationViewContent


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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|React.ReactNode|Yes|-|-|

## Related Types

- [ConfigurationViewContentProps](../types/ConfigurationViewContentProps.md)

