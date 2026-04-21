# AsyncButton

This is a button that is meant to be used to execute a async action.
The onClick handler should return a promise. The button's behavior is to set the status as 'loading...' until the promise that was returned evluates and returns a result or throws an exception.




## Installation

```tsx
import { AsyncButton } from 'uxp/components';
```

## Signature

```tsx
const AsyncButton: React.FunctionComponent<AsyncButtonProps>
```

## Examples

```tsx
<AsyncButton
     title="Submit"
     onClick={async() => {return executeAction("model", "action", {})}}
     icon="https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg"
     loadingTitle="Submitting..."
     className="custom-css-class"
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|leftIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|rightIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|className|string|No|-|-|
|onClick|() => Promise<any>|Yes|-|-|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|
|loadingTitle|string|No|-|-|
|onError|(e: any) => void|No|-|-|
|styles|React.CSSProperties|No|-|-|
|iconStyles|React.CSSProperties|No|-|-|
|type|[ButtonComponentType](../types/ButtonComponentType.md)|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|iconOnly|boolean|No|-|-|
|icon|string|No|-|-|
|iconPosition|'left' \| 'right'|No|-|-|
|useLoadingSpinner|boolean|No|-|-|

## Related Types

- [AsyncButtonProps](../types/AsyncButtonProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)

