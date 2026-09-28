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

## Live preview

[Open ConfirmButton in the playground →](<https://story.uxp.iviva.com/?path=/docs/buttons-confirmbutton--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|"Delete"|
|textMode|[ButtonComponentTextMode](../types/ButtonComponentTextMode.md)|No|-|-|
|icon|string|No|-|-|
|className|string|No|-|-|
|onConfirm|() => Promise<any>|Yes|-|Resolves after 1 s onConfirm={() => new Promise(resolve => setTimeout(resolve, …|
|onCancel|() => void|Yes|-|Log onCancel={() => console.log('cancelled')}|
|loading|boolean|No|-|-|
|loadingTitle|string|No|-|-|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|

## Related Types

- [IConfirmButtonProps](../types/IConfirmButtonProps.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

