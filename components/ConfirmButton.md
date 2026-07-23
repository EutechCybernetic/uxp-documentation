# ConfirmButton

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=buttons-confirmbutton--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ConfirmButton live demo"
></iframe>


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
|textMode|[ButtonComponentTextMode](../types/ButtonComponentTextMode.md)|No|-|-|
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
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

