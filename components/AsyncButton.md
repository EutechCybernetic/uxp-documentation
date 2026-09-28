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

## Live preview

[Open AsyncButton in the playground →](<https://story.uxp.iviva.com/?path=/docs/buttons-asyncbutton--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/buttons-asyncbutton--docs&args=title%3ASubmit%3BclassName%3Acustom-css-class&props=%7B%22icon%22%3A%22https%3A%2F%2Fstatic.iviva.com%2Fimages%2FAdani_UXP%2FQR_badge_icon.svg%22%2C%22loadingTitle%22%3A%22Submitting...%22%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|"Submit"|
|leftIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|rightIcon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|className|string|No|-|-|
|onClick|() => Promise<any>|Yes|-|Resolves after 1.5 s onClick={() => new Promise(resolve => setTimeout(resolve, …|
|active|boolean|No|-|-|
|disabled|boolean|No|-|-|
|loadingTitle|string|No|-|"Submitting..."|
|onError|(e?: React.MouseEvent<HTMLButtonElement>, error?: unknown) => void|No|-|Show the error onError={(e, error) => alert(String(error))}|
|styles|React.CSSProperties|No|-|-|
|iconStyles|React.CSSProperties|No|-|-|
|type|[ButtonComponentType](../types/ButtonComponentType.md)|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|iconOnly|boolean|No|-|-|
|textMode|[ButtonComponentTextMode](../types/ButtonComponentTextMode.md)|No|-|-|
|icon|string|No|-|"fas paper-plane"|
|iconPosition|'left' \| 'right'|No|'left'|-|
|useLoadingSpinner|boolean|No|-|-|

## Related Types

- [AsyncButtonProps](../types/AsyncButtonProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

