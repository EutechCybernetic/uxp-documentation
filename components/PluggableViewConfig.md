# PluggableViewConfig

Modal for editing a pluggable view's configuration props.



## Installation

```tsx
import { PluggableViewConfig } from 'uxp/components';
```

## Signature

```tsx
const PluggableViewConfig: React.FunctionComponent<PluggableViewConfigProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|componentId|string \| null|Yes|-|-|
|currentProps|Record<string, any>|Yes|-|-|
|onClose|() => void|Yes|-|-|
|onSave|(props: Record<string, any>) => void|Yes|-|-|

## Related Types

- [PluggableViewConfigProps](../types/PluggableViewConfigProps.md)

