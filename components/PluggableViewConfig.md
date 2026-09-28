# PluggableViewConfig

> **Advanced.** Available for building custom components. Most apps do not need it.

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
|componentId|string \| null|Yes|-|"storybook/widget/energy-mix"|
|currentProps|Record<string, any>|Yes|-|{ title: 'Energy mix', showLegend: true }|
|onClose|() => void|Yes|-|Log onClose={() => console.log('closed')}|
|onSave|(props: Record<string, any>) => void|Yes|-|Log onSave={(props) => console.log('saved', props)}|

## Related Types

- [PluggableViewConfigProps](../types/PluggableViewConfigProps.md)

