# AddOnProvider


A provider component that manages add-on data and provides utility functions via context.



## Installation

```tsx
import { AddOnProvider } from 'uxp/components';
```

## Signature

```tsx
const AddOnProvider: React.FunctionComponent<AddOnProviderProps>
```

## Examples

```tsx
<AddOnProvider>
  <MyComponent />
</AddOnProvider>
```

```tsx
<AddOnProvider>
  <div>
    <MyComponent />
    <AnotherComponent />
  </div>
</AddOnProvider>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|React.ReactNode|Yes|-|-|

## Related Types

- [AddOnProviderProps](../types/AddOnProviderProps.md)

