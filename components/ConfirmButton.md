# ConfirmButton

This is a confirm button component.




## Installation

```tsx
import { ConfirmButton } from 'uxp/components';
```

## Signature

```tsx
const ConfirmButton: React.FunctionComponent<IConfirmButtonProps>
```

## Examples

```tsx
<ConfirmButton
     title="Delete Item"
     loading={buttonLoading}
     onConfirm={async () => {return executeAction("model", "action", {})}}
     onCancel={() => {alert("Canceled")}}
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|-|
|icon|string|No|-|-|
|className|string|No|-|-|
|onConfirm|() => Promise<any>|Yes|-|-|
|onCancel|() => void|Yes|-|-|
|loading|boolean|No|-|-|
|loadingTitle|string|No|-|-|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|

## Related Types

- [IConfirmButtonProps](../types/IConfirmButtonProps.md)

