# ConfiguredPage


A component to render widgets or UI components by parsing the pageId



## Installation

```tsx
import { ConfiguredPage } from 'uxp/components';
```

## Signature

```tsx
const ConfiguredPage: React.MemoExoticComponent<React.FunctionComponent<ConfiguredPageComponentProps>>
```

## Examples

#### <ConfiguredPage
  pageId="com.example.module/widget/LocationDetails"
  additionalProps={{ LocationKey: 100 }}
/>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|pageId|string|Yes|-|-|
|additionalProps|any|No|-|-|
|configuredProps|Record<string, any>|No|-|-|
|notFoundMessage|string \| React.ReactNode|No|-|-|

## Related Types

- [ConfiguredPageComponentProps](../types/ConfiguredPageComponentProps.md)

